import 'package:flutter/material.dart';

class Nots extends StatelessWidget {
  const Nots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            minLines: 20,
            maxLines: 20,
          ),
          Text("Notunuzu yukarıya yazabilirsiniz...")
        ],
      ),
    );
  }
}
