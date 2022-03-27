import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({ Key? key }) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
        backgroundColor: Colors.orange,
      ),
    );
  }
}