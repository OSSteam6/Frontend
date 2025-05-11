import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
//   final String title;
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Home Page'),
        ),
        body: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                const Text('Home Page'),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context, '/upload');
                    },
                    child: const Text('Upload'),
                ),
                ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context, '/profile');
                    },
                    child: const Text('Profile'),
                ),
            ],
        ),)
    );
  }
  
}
