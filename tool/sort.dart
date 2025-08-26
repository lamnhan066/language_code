// ignore_for_file: avoid_print

import 'dart:io';

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/token.dart';

/// Sorts enum members alphabetically while preserving comments.
Future<void> main(List<String> args) async {
  final filePath = _joinPaths(['lib', 'src', 'language_codes.dart']);
  final source = await File(filePath).readAsString();

  // Parse source file
  final result = parseString(content: source, path: filePath);

  final unit = result.unit;

  final edits = <_EnumEdit>[];

  for (var declaration in unit.declarations) {
    if (declaration is EnumDeclaration) {
      edits.add(_processEnum(declaration, source));
    }
  }

  if (edits.isEmpty) {
    print("No enums found in $filePath");
    return;
  }

  // Apply edits in reverse order so offsets stay valid
  var updatedSource = source;
  for (final edit in edits.reversed) {
    updatedSource =
        updatedSource.replaceRange(edit.start, edit.end, edit.replacement);
  }

  await File(filePath).writeAsString(updatedSource);
  print("✅ Updated: $filePath");
}

String _joinPaths(List<String> parts) {
  return parts.join(Platform.pathSeparator);
}

/// Collects info for a replacement
class _EnumEdit {
  final int start;
  final int end;
  final String replacement;
  _EnumEdit(this.start, this.end, this.replacement);
}

_EnumEdit _processEnum(EnumDeclaration node, String source) {
  var members = <_EnumMemberWithComments>[];

  for (var constant in node.constants) {
    final leadingComments = _extractLeadingComments(constant, source);
    members.add(_EnumMemberWithComments(constant, leadingComments));
  }

  // Sort alphabetically by name
  members
      .sort((a, b) => a.constant.name.lexeme.compareTo(b.constant.name.lexeme));

  final twoChars = members.where((e) {
    final enumName = e.constant.name.lexeme;
    return enumName.length == 2 || (enumName.length > 2 && enumName[2] == '_');
  }).toList();

  twoChars
      .sort((a, b) => a.constant.name.lexeme.compareTo(b.constant.name.lexeme));

  final threeChars = members.where((e) {
    final enumName = e.constant.name.lexeme;
    return (enumName.length == 3 && enumName[2] != '_') ||
        (enumName.length > 3 && enumName[3] == '_');
  }).toList();

  threeChars
      .sort((a, b) => a.constant.name.lexeme.compareTo(b.constant.name.lexeme));

  members.clear();
  members = ([...twoChars, ...threeChars]);

  // Rebuild text for sorted members (with comments)
  final replacement = members.map((m) => m.fullText(source)).join(",\n\n");

  final start = node.constants.first.offset;
  final end = node.constants.last.end;

  return _EnumEdit(start, end, replacement);
}

class _EnumMemberWithComments {
  final EnumConstantDeclaration constant;
  final List<String> comments;
  _EnumMemberWithComments(this.constant, this.comments);

  String fullText(String source) {
    final text = source.substring(constant.offset, constant.end);
    return [...comments, text].join("\n");
  }
}

List<String> _extractLeadingComments(AstNode node, String source) {
  final comments = <String>[];
  Token? token = node.beginToken.precedingComments;
  while (token != null) {
    comments.add(source.substring(token.offset, token.end));
    token = token.next;
  }
  return comments;
}
