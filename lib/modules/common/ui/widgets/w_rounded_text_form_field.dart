import 'package:flutter/material.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class RoundedTextFormField extends StatelessWidget {
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String name;
  final String labelText;
  final String? Function(String?)? validator;
  final bool obscureText;

  const RoundedTextFormField({
    this.keyboardType,
    this.controller,
    required this.name,
    required this.labelText,
    required this.validator,
    this.obscureText = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        contentPadding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.8,
            color: ThemeColors.tertiary,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      obscureText: obscureText,
      validator: validator,
    );
  }
}
