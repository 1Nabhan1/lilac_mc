import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Tst extends StatelessWidget {
  const Tst({super.key});
  Future<void> check() async {
    try {
      final response = await http.post(
          Uri.parse('https://test.vehup.com/api/vendor-login'),
          body: {'email': 'test@lilacinfotech.com', 'password': '12345678'});
      print(response.body);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              check();
            },
            child: Text('checkk')),
      ),
    );
  }
}
