import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:tinoco_care_hospital/config/custom_colors.dart';
import 'package:tinoco_care_hospital/widgets/button.dart';
import 'package:tinoco_care_hospital/widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );

  final phoneFormatter = MaskTextInputFormatter(
    mask: '(##) #####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: sizeScreen.height,
          width: sizeScreen.width,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: sizeScreen.height * 0.25,
                          width: sizeScreen.width * 0.8,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white,
                                width: 3.0,
                              ),
                            ),
                          ),
                          child: Image.asset('assets/logo.png'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: sizeScreen.width * 0.08,
                      vertical: sizeScreen.width * 0.05,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(45),
                      ),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Center(
                            child: Text(
                              "Cadastrar-se",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: sizeScreen.height * 0.03),
                          CustomTextField(
                            icon: Icons.email,
                            label: "E-mail",
                            textInputType: TextInputType.emailAddress,
                            onSaved: (value) {},
                          ),
                          CustomTextField(
                            icon: Icons.lock,
                            label: "Senha",
                            isSecret: true,
                            onSaved: (value) {},
                          ),
                          CustomTextField(
                            icon: Icons.person,
                            label: "Nome",
                            onSaved: (value) {},
                          ),
                          CustomTextField(
                            icon: Icons.phone,
                            label: "Celular",
                            inputFormatters: [phoneFormatter],
                            textInputType: TextInputType.phone,
                            onSaved: (value) {},
                          ),
                          CustomTextField(
                            icon: Icons.file_copy,
                            label: "CPF",
                            inputFormatters: [cpfFormatter],
                            textInputType: TextInputType.number,
                            onSaved: (value) {},
                          ),
                          TinocoButton(
                            onPressed: () {},
                            title: "Salvar",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 10.0,
                left: 10.0,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
