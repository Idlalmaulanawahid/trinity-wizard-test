// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:trinity_wizard_test/config/theme.dart';
import 'package:trinity_wizard_test/models/data-model.dart';
import 'package:trinity_wizard_test/widgets/custom_input-field.dart';

class ScreenTwoPage extends StatefulWidget {
  ListDataModel dataModel;
  ScreenTwoPage({
    Key? key,
    required this.dataModel,
  }) : super(key: key);

  @override
  State<ScreenTwoPage> createState() => _ScreenTwoPageState();
}

class _ScreenTwoPageState extends State<ScreenTwoPage> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

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
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryColor,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 500,
            height: 40,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 227, 228, 230),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Main Information",
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomInputField(
              hintText: widget.dataModel.firstName!,
              suffixIcon: const SizedBox(),
              controller: firstNameController,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomInputField(
              hintText: widget.dataModel.lastName!,
              suffixIcon: const SizedBox(),
              controller: firstNameController,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 500,
            height: 40,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 227, 228, 230),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Sub Information",
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomInputField(
              hintText: 'Email Name',
              suffixIcon: const SizedBox(),
              controller: emailController,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomInputField(
              hintText: 'DOB',
              suffixIcon: Icon(
                Icons.calendar_month_outlined,
                color: kPrimaryColor,
              ),
              controller: dateController,
              onChanged: (value) {},
              formatInput: TextInputType.datetime,
              onTap: () async {
                FocusScope.of(context).requestFocus(FocusNode());
                // DateTime? pickedDate = await showDatePicker(
                //   context: context,
                //   initialDate: DateTime.now(),
                // );
                setState(() {});
              },
            ),
          ),
        ],
      )),
    );
  }
}
