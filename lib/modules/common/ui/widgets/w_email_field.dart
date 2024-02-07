import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedTextFormField(
      name: 'email',
      keyboardType: TextInputType.emailAddress,
      labelText: 'Correo electrónico',
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(
          errorText: "El email es requerido",
        ),
        FormBuilderValidators.email(
          errorText: "Correo electrónico Inválido",
        ),
      ]),
    );
  }
}