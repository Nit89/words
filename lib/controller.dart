import 'package:flutter/material.dart';

class Controller extends ChangeNotifier {
  int currentTile = 0, currentRow = 0;
  setKeyTapped({required value}) {
    if (value == 'ENTER') {
      if (currentTile == 5 + (currentRow + 1)) {
        print('enter clicked');
      }
    } else if (value == 'BACK') {
      if (currentTile > 5 * (currentRow + 1) - 5) {
        currentTile--;
      }
    } else {
      if (currentTile < 5 * (currentRow + 1)) {
        currentTile++;
      }
    }
    print('current tile $currentTile');
  }
}
