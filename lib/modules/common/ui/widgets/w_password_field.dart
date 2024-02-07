import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedTextFormField(
      name: 'password',
      keyboardType: TextInputType.emailAddress,
      labelText: 'Contraseña',
      obscureText: true,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(
          errorText: "El contraseña es requerida",
        ),
      ]),
    );
  }
}