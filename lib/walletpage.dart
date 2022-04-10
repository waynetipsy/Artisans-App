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
      body: Card(
        
        child: Container(
          
          decoration: const BoxDecoration(),
          height: 300.0,
          width: 400.0,
          child: Card(
            color: Colors.orange, 
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: const EdgeInsets.all(19),
          ),
          ),
        ),
      );
  }
}
