import 'package:flutter/material.dart';
import 'package:trinity_wizard_test/config/theme.dart';

class ScreenTwoPage extends StatefulWidget {
  const ScreenTwoPage({super.key});

  @override
  State<ScreenTwoPage> createState() => _ScreenTwoPageState();
}

class _ScreenTwoPageState extends State<ScreenTwoPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () => {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (BuildContext context) {
                //       return const SignupIdvCheckPage();
                //     },
                //   ),
                // ),
              },
              child: Text(
                "Cancel",
                style: primaryTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          centerTitle: false,
          iconTheme: IconThemeData(
            color: kPrimaryColor,
          ),
          backgroundColor: kBackgroundColor,
          elevation: 0,
          actions: [
            TextButton(
              onPressed: () => {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (BuildContext context) {
                //       return const SignupIdvCheckPage();
                //     },
                //   ),
                // ),
              },
              child: Text(
                "Save",
                style: primaryTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
            ),
          ]),
      body: SingleChildScrollView(
          child: Column(
        children: [],
      )),
    );
  }
}
