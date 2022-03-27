import 'package:flutter/material.dart';

class UserPolicyScreen extends StatefulWidget {
  const UserPolicyScreen({ Key? key }) : super(key: key);

  @override
  State<UserPolicyScreen> createState() => _UserPolicyScreenState();
}

class _UserPolicyScreenState extends State<UserPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: const Text('User Policy'),
         centerTitle: true,
         backgroundColor: Colors.orange,
       ),
    );
  }
}