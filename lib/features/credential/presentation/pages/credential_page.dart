import 'package:fitness_app/features/credential/presentation/widgets/continue_button.dart';
import 'package:fitness_app/features/credential/presentation/widgets/credential_page_back_button.dart';
import 'package:flutter/material.dart';
import '../widgets/log_in_button_switch.dart';
import '../widgets/log_in_view_chooser.dart';

class CredentialPage extends StatelessWidget {
  const CredentialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                CredentialPageBackButton(),

                LogInButtonSwitch(),

                LogInViewChooser(),

                ContinueButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
