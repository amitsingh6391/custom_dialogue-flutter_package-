// library fraction;

// /// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }

library custom_dialouge;

import "package:flutter/material.dart";

class CustomPackageAlertBox {
  static Future showCustomAlertBox({
    required BuildContext context,
    required Widget willDisplayWidget,
  }) {
    assert(context != null, "If context is null!!");
    assert(willDisplayWidget != null, "If willDisplayWidget is null!!");
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                willDisplayWidget,
                MaterialButton(
                  color: Colors.white70,
                  child: const Text('Close Alert'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            elevation: 12,
          );
        });
  }
}
