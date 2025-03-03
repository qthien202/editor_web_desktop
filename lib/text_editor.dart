import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextEditor extends StatefulWidget {
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final void Function()? onShowEmoji;
  final void Function()? onShowAttachment;
  final Widget? iconSticker;
  final Widget? iconAttachment;
  final Widget? iconSend;
  final String? Function(String?)? validator;
  final bool autofocus;
  final bool? showCursor;
  final bool autocorrect;
  final bool enableSuggestions;
  final Iterable<String>? autofillHints;
  final AutovalidateMode? autovalidateMode;
  final Widget? Function(BuildContext,
      {required int currentLength,
      required bool isFocused,
      required int? maxLength})? buildCounter;
  final Clip clipBehavior;
  final bool canRequestFocus;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final bool? enabled;
  final void Function(String?)? onSaved;
  final bool readOnly;
  final bool obscureText;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final Brightness? keyboardAppearance;
  final Color? cursorColor;
  final double cursorWidth;
  final double? cursorHeight;
  final TextSelectionControls? selectionControls;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onEditingComplete;
  final EdgeInsets scrollPadding;
  final bool expands;
  final TextHeightBehavior? textHeightBehavior;
  final BoxHeightStyle selectionHeightStyle;
  final BoxWidthStyle selectionWidthStyle;

  const TextEditor({
    super.key,
    this.onChanged,
    this.onTap,
    this.onShowEmoji,
    this.onShowAttachment,
    this.iconSticker,
    this.iconAttachment,
    this.iconSend,
    this.validator,
    this.showCursor,
    this.autofocus = false,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.autofillHints,
    this.autovalidateMode,
    this.buildCounter,
    this.clipBehavior = Clip.hardEdge,
    this.canRequestFocus = true,
    this.controller,
    this.focusNode,
    this.decoration,
    this.enabled,
    this.onSaved,
    this.readOnly = false,
    this.obscureText = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardAppearance,
    this.cursorColor,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.selectionControls,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.expands = false,
    this.textHeightBehavior,
    this.selectionHeightStyle = BoxHeightStyle.tight,
    this.selectionWidthStyle = BoxWidthStyle.tight,
  });

  @override
  State<TextEditor> createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            InkWell(
              onTap: widget.onShowEmoji,
              child: widget.iconSticker ??
                  const Icon(Icons.emoji_emotions_outlined),
            ),
            InkWell(
              onTap: widget.onShowAttachment,
              child: widget.iconAttachment ??
                  const Icon(Icons.attach_file_outlined),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextFormField(
            controller: widget.controller,
            focusNode: widget.focusNode,
            obscureText: widget.obscureText,
            readOnly: widget.readOnly,
            onSaved: widget.onSaved,
            enabled: widget.enabled,
            canRequestFocus: widget.canRequestFocus,
            autovalidateMode: widget.autovalidateMode,
            autofillHints: widget.autofillHints,
            autocorrect: widget.autocorrect,
            enableSuggestions: widget.enableSuggestions,
            showCursor: widget.showCursor,
            validator: widget.validator,
            autofocus: widget.autofocus,
            buildCounter: widget.buildCounter,
            clipBehavior: widget.clipBehavior,
            onTap: widget.onTap,
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onFieldSubmitted,
            onEditingComplete: widget.onEditingComplete,
            textCapitalization: widget.textCapitalization,
            keyboardType: widget.keyboardType ?? TextInputType.multiline,
            keyboardAppearance: widget.keyboardAppearance,
            textInputAction: widget.textInputAction ?? TextInputAction.newline,
            cursorColor: widget.cursorColor,
            cursorWidth: widget.cursorWidth,
            cursorHeight: widget.cursorHeight,
            selectionControls: widget.selectionControls,
            scrollPadding: widget.scrollPadding,
            expands: widget.expands,
            selectionHeightStyle: widget.selectionHeightStyle,
            selectionWidthStyle: widget.selectionWidthStyle,
            textAlignVertical: TextAlignVertical.center,
            maxLines: widget.expands ? null : null,
            maxLength: widget.maxLength,
            maxLengthEnforcement: widget.maxLengthEnforcement,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            decoration: widget.decoration ??
                const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 20),
                  hintText: "Nhập tin nhắn...",
                  hintStyle: TextStyle(fontSize: 14),
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
          ),
        ),
        widget.iconSend ??
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
            ),
      ],
    );
  }
}
