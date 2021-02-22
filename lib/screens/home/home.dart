import 'package:flutter/material.dart';
import 'package:minorproject/screens/root/root.dart';
import 'package:minorproject/states/currentUser.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is home"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Sign Out'),
          onPressed: () async {
            CurrentUser _currentUser =
                Provider.of<CurrentUser>(context, listen: false);
            String _returnString = await _currentUser.signOut();
            if (_returnString == "success") {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => OurRoot()),
                  (route) => false);
            }
          },
        ),
      ),
    );
  }
}
