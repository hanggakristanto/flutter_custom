import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HtLogin"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            QTextField(
              label: "Email",
              hint: "Your email",
              validator: Validator.email,
              value: controller.email,
              onChanged: (value) {
                controller.email = value;
              },
            ),
            QTextField(
              label: "Password",
              hint: "Your password",
              obscure: true,
              validator: Validator.required,
              value: controller.password,
              onChanged: (value) {
                controller.password = value;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 48.0,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("Login"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.doLogin(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
