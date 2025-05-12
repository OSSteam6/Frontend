import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationBarApp extends StatelessWidget {
  const BottomNavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BottomNavigationBarWidget());
  }
}

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/navigation/upload.svg'),
            label: 'Upload',
          ),
           BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/navigation/map.svg'),
            label: '',
          ),
           BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/navigation/profile.svg'),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
