import 'dart:convert';
import 'package:integer/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';
import 'package:http/http.dart' as http;
import '../../model/user.dart';
import '../../model/userinfo.dart';

class ButtonLogin extends StatefulWidget {
  @override
  _ButtonLoginState createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 50, left: 200),
      child: Container(
        alignment: Alignment.bottomRight,
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: FlatButton(
          onPressed: () async {
            var result = await fetchLogin();
            Userinfo.user = result;
            if (result != null) {
              Navigator.pushNamed(context, 'splash');
            } else {
              const snackBar = SnackBar(
                content: Text(
                  'Email ou password incorrectos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Palette.orange,
                  ),
                ),
                backgroundColor: Colors.white,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
            },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'OK',
                style: TextStyle(
                  color: Palette.orange,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Palette.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<User?> fetchLogin() async {
  final response = await http.get(Uri.parse('https://tfcapi.app.smartmock.io/login?email=' + Userinfo.email + '&&password=' + Userinfo.password));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return User.fromJson(data);
  } else {
    return null;
  }
}