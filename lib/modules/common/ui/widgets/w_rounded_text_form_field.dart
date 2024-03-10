import 'package:flutter/material.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class RoundedTextFormField extends FormBuilderTextField {
  final String labelText;

  RoundedTextFormField({
    required super.name,
    required this.labelText,
    super.keyboardType,
    super.validator,
    super.obscureText = false,
    super.key,
  }) : super(
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
        );
}
