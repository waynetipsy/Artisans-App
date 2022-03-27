import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({ Key? key }) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: const Text('Support'),
         backgroundColor: Colors.orange,
      ),
    );
  }
}