import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 24.0),

            // Logo dan Judul
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/logoperhiasan.png',
                ),
                const SizedBox(height: 24.0),
                const Text(
                  '',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8.0),

            //Username
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFe4b730),
                labelText: 'Username',
              ),
            ),

            const SizedBox(height: 12.0),

            //Password
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFe4b730),
                labelText: 'Password',
              ),
              obscureText: true,
            ),

            const SizedBox(height: 24.0),

            OverflowBar(
              alignment: MainAxisAlignment.center,
              spacing: 12.0,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xFFe4b730),
                  ),
                  child: const Text('CANCEL'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Aksi kalau tombol NEXT ditekan
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  child: const Text('NEXT'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
