import 'package:delivery_flutter/src/pages/login/login_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginController loginController = Get.put(LoginController());

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 50,
        child: _textDontHaveAccount(),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            _backgroundCover(context),
            _boxForm(context),
            Column(
              children: [
                _imageCover(),
                _textAppName(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // PRIVATE
  Widget _backgroundCover(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.42,
      color: Colors.amber,
      alignment: Alignment.topCenter,
    );
  }

  // PRIVATE
  Widget _textAppName() {
    return const Text(
      'DELIVERY MYSQL',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  // PRIVATE

  Widget _boxForm(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black54, blurRadius: 15, offset: Offset(0, 0.75)),
        ],
      ),
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.33,
        left: 50,
        right: 50,
      ),
      height: MediaQuery.of(context).size.height * 0.45,
      child: Column(
        children: [
          _textYourInfo(),
          _textFieldEmail(),
          _textFieldPassword(),
          _buttonLogin(),
        ],
      ),
    );
  }

  // PRIVATE
  Widget _textYourInfo() {
    return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 30),
      child: const Text(
        'LOGIN',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  //PRIVATE
  Widget _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Email',
          prefixIcon: Icon(Icons.email),
        ),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: const TextField(
        obscureText: true,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Senha',
          prefixIcon: Icon(Icons.lock),
        ),
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15)),
        child: const Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  // PRIVATE
  Widget _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Não tem uma conta ?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        GestureDetector(
          onTap: () => loginController.goToRegisterPage(),
          child: const Text(
            'Cadastre-se!',
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }

  // PRIVATE
  Widget _imageCover() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(
          top: 20,
          bottom: 15,
        ),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/img/delivery.png',
          width: 130,
          height: 130,
        ),
      ),
    );
  }
}
