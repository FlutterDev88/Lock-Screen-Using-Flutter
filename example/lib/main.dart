import 'package:flutter/material.dart';
import 'package:flutter_lock_screen/flutter_lock_screen.dart';

class PassCodeScreen extends StatefulWidget {
  PassCodeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PassCodeScreenState createState() => new _PassCodeScreenState();
}

class _PassCodeScreenState extends State<PassCodeScreen> {
  @override
  Widget build(BuildContext context) {
    var myPass = [1, 2, 3, 4];
    return LockScreen(
        title: "This is Screet",
        passLength: myPass.length,
        bgImage: "images/pass_code_bg.jpg",
        showFingerPass: false,
        fingerFunction: () => print("dede"),
        borderColor: Colors.white,
        showWrongPassDialog: false,
        wrongPassContent: "Wrong pass please try again.",
        wrongPassTitle: "Opps!",
        wrongPassCancelButtonText: "Cancel",
        passCodeVerify: (List<int> passcode) async {
          for (int i = 0; i < myPass.length; i++) {
            if (passcode[i] != myPass[i]) {
              return false;
            }
          }
          return true;
        },
        onSuccess: () {
          Navigator.of(context).pushReplacement(
              new MaterialPageRoute(builder: (BuildContext context) {
            return null;
          }));
        });
  }
}
