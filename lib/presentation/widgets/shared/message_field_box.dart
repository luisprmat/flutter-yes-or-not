import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final FocusNode focusNode = FocusNode();

    final outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      hintText: 'End your message with "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          print('Valor de la caja de texto: $textValue');
          textController.clear();
        },
      ),
    );

    return TextFormField(
      focusNode: focusNode,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit value: $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
