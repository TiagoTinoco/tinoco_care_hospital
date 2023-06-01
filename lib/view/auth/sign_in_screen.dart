import 'package:flutter/material.dart';
import 'package:tinoco_care_hospital/config/custom_colors.dart';
import 'package:tinoco_care_hospital/view/auth/sign_up_screen.dart';
import 'package:tinoco_care_hospital/widgets/button.dart';
import 'package:tinoco_care_hospital/widgets/text_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    bool forgotPassword = true;

    Future<void> _forgotPassword() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Esqueceu a Senha?'),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const <Widget>[
                  Text('Insira sua nova senha.'),
                  SizedBox(height: 20),
                  TinocoTextField(
                    icon: Icons.lock,
                    label: "senha",
                    isSecret: true,
                  ),
                  TinocoTextField(
                    icon: Icons.lock,
                    label: "senha",
                    isSecret: true,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TinocoButton(
                onPressed: () => Navigator.of(context).pop(),
                title: "Cancelar",
              ),
              TinocoButton(
                isFiled: true,
                onPressed: () {},
                title: "Salvar",
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: TinocoColors.tinocoSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: sizeScreen.height,
          width: sizeScreen.width,
          child: Column(
            children: [
              if (forgotPassword != false) ...[],
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
                    top: Radius.circular(45.0),
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Center(
                        child: Text(
                          "Entrar",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: sizeScreen.height * 0.03),
                      const TinocoTextField(
                        icon: Icons.email,
                        label: "E-mail",
                      ),
                      const TinocoTextField(
                        icon: Icons.lock,
                        label: "senha",
                        isSecret: true,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => _forgotPassword(),
                          child: Text(
                            "Esqueceu a senha?",
                            style: TextStyle(
                              color: TinocoColors.tinocoSecondaryColor,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: sizeScreen.height * 0.02),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Divider(thickness: 2.0),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: sizeScreen.width * 0.03),
                              child: const Text(
                                "OU",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Divider(thickness: 2.0),
                            ),
                          ],
                        ),
                      ),
                      TinocoButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => SignUpScreen()),
                            ),
                          );
                        },
                        title: "Criar Conta",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
