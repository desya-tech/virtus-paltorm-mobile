import 'package:flutter/material.dart';

class ErrorConnView extends StatefulWidget {
  ErrorConnView({Key? key}) : super(key: key);

  @override
  State<ErrorConnView> createState() => _ErrorConnViewState();
}

class _ErrorConnViewState extends State<ErrorConnView> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        /* Do something here if you want */
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('The System Back Button is Deactivated')));
        return false;
      },
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.red, title: Text("Offline")),
        body: Container(
            alignment: Alignment.center,
            child: Text("No Internet Connection!")),
      ),
    );
  }
}
