import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burger_mobile/app/core/widgets/vakinha_appbar.dart';
import 'package:vakinha_burger_mobile/app/core/widgets/vakinha_button.dart';
import 'package:vakinha_burger_mobile/app/core/widgets/vakinha_textformfield.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
          appBar: VakinhaAppbar(
            elevation: 0,
          ),
          backgroundColor: Colors.white,
          body: LayoutBuilder(
            builder: (_, constrainsts){
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constrainsts.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Login',
                              style: context.textTheme.headline6?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: context.theme.primaryColorDark
                              ),
                            ),
                            const SizedBox(
                               height: 30,
                            ),
                            const VakinhaTextformfield(label: 'E-mail'),
                            const SizedBox(
                               height: 30,
                            ),
                            const VakinhaTextformfield(label: 'Senha'),
                            const SizedBox(
                               height: 50,
                            ),
                            Center(
                              child: VakinhaButton(
                                width: context.width,
                                label: 'Entrar',
                                onPressed: () {}
                              )
                            ),
                            const Spacer(), //Joga tudo que vier depois para parte de baixo da tela
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               const Text('Não possui uma conta?'),
                               TextButton(
                                 onPressed: () {
                                   Get.toNamed('/auth/register');
                                 },
                                 child: const Text(
                                   'Cadastre-se',
                                   style: VakinhaUi.textBold,
                                 ),
                               )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ),
              );
            },
          ),
       );
  }
}