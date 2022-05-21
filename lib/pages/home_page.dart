import 'package:flutter/material.dart';
import 'package:words/components/grid.dart';
import 'package:words/components/key_board.dart';
import 'package:words/data/keys_map.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wordles'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.yellow,
              child: Grid(),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.green,
              child: Column(
                children: [
                  keyboardRow(
                    min: 1,
                    max: 10,
                  ),
                  keyboardRow(
                    min: 11,
                    max: 19,
                  ),
                  keyboardRow(
                    min: 20,
                    max: 29,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
