import 'package:ecommerce_cap/screens/home.dart';
import 'package:flutter/material.dart';

class LoginRegisterScreen extends StatefulWidget {
  @override
  _LoginRegisterScreenState createState() => _LoginRegisterScreenState();
}

class _LoginRegisterScreenState extends State<LoginRegisterScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  List<Map<String, String>> users = [];

  void register() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Verificar si el usuario ya está registrado
    bool isRegistered = users.any((user) => user['username'] == username);

    if (isRegistered) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('El usuario ya está registrado.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Aceptar'),
              ),
            ],
          );
        },
      );
    } else {
      users.add({'username': username, 'password': password});
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Registro Exitoso'),
            content: const Text('Usuario registrado correctamente.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Aceptar'),
              ),
            ],
          );
        },
      );
    }
  }

  void login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    bool isValidUser = users.any(
        (user) => user['username'] == username && user['password'] == password);

    if (isValidUser) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Inicio de Sesión Exitoso'),
            content: Text('Bienvenido, $username.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Aceptar'),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error de Inicio de Sesión'),
            content: const Text('Usuario o contraseña incorrectos.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Aceptar'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 100),
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              labelText: 'Nombre de Usuario',
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Contraseña',
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(
                onPressed: register,
                child: const Text('Registrar'),
              ),
              TextButton(
                onPressed: login,
                child: const Text('Iniciar Sesión'),
              ),
            ],
          ),
          const SizedBox(height: 500),
        ],
      ),
    );
  }
}
