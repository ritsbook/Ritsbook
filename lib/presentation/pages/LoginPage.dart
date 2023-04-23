import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ritsbook/core/validation/emailvalidator.dart';
import 'package:ritsbook/core/validation/passwordvalidator.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final _mailAddressController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        color: const Color(0xffff6b6b),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Form(
                key: _key,
                child: Column(
                  children: [
                    const Text(
                      '立命館大学生専用',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      '教科書フリマアプリ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      color: Colors.white,
                      width: 258,
                      height: 64,
                      child: const Center(
                        child: Text(
                          'RITSBOOK',
                          style: TextStyle(
                            color: Color(0xff484848),
                            fontSize: 34,
                            letterSpacing: 10.44,
                          ),
                        ),
                      ),
                    ),
                    const Gap(32),
                    
                    Image.asset('assets/images/BookImage.png'),
                    const Gap(32),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "メールアドレス",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'メールアドレスを入力',
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 15,
                          )),
                      controller: _mailAddressController,
                      validator: (value) {
                        return EmailValidator.validate(value!);
                      },
                    ),
                    const Gap(8),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "パスワード",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    const Gap(8),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'パスワードを入力',
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      ),
                      obscureText: true,
                      controller: _passwordController,
                      validator: (value) {
                        return PassWordValidator.validate(value!);
                      },
                    ),
                    const Gap(8),
                    const Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                    const Gap(16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {},
                      child:
                          const Text('ログイン', style: TextStyle(color: Colors.black)),
                    ),
                    const Gap(8),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'アカウントをお持ちでない方はこちら',
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
