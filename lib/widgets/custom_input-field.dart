// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:trinity_wizard_test/config/theme.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final bool? borderForm;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final TextInputType? formatInput;
  final Widget? icon;
  final int? maxLine;
  final Function()? onTap;

  const CustomInputField({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.borderForm = false,
    this.suffixIcon,
    required this.controller,
    this.onChanged,
    this.formatInput = TextInputType.text,
    this.icon,
    this.maxLine = 1,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
       return  Container(
          decoration: BoxDecoration(
            color: kWhiteGreyColor,
            borderRadius: BorderRadius.circular(15.0),
            border: borderForm!
                ? Border.all(
                    color: kPrimaryColor, //                   <--- border color
                    width: 3.0,
                  )
                : Border.all(
                    color:
                        kGreyColor, //                   <--- border color
                    width: 1.0,
                  ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TextFormField(
              keyboardType: formatInput,
              controller: controller,
              onChanged: onChanged,
              obscureText: obscureText,
              maxLines: maxLine,
              decoration: InputDecoration(
                icon: icon,
                hintText: hintText,
                hintStyle: greyTextStyle.copyWith(
                  fontSize: fontSizeStandard,
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                suffixIcon: suffixIcon,
              ),
              onTap: onTap,
            ),
          ),
        );
  }
}
