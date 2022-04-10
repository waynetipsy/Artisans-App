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
      body: Container(
        color: Colors.orange,
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .27,
            color: Colors.orange,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  const  Text(
                      'Total Balance,',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                          ),
                    ),
                  const  SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '6,354',
                          style: 
                              TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w800,
                              ),
                        ),
                        Text(
                          ' MLR',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                              
                            ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                         Text(
                          'Eq:',
                          style: 
                              TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              
                        ),
                        ),
                       Text(
                          ' \$10,000',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  const  SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: 85,
                        padding:
                         const   EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                            border: Border.all(color: Colors.white, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                          Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          SizedBox(width: 5),
                           Text("Top up",
                                style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ))
                  ],
                ),
              const  Positioned(
                  left: -170,
                  top: -170,
                  child: CircleAvatar(
                    radius: 130,
                    
                  ),
                ),
              const  Positioned(
                  left: -160,
                  top: -190,
                  child: CircleAvatar(
                    radius: 130,
                    
                  ),
                ),
              const   Positioned(
                  right: -170,
                  bottom: -170,
                  child: CircleAvatar(
                    radius: 130,
                    
                  ),
                ),
              const  Positioned(
                  right: -160,
                  bottom: -190,
                  child: CircleAvatar(
                    radius: 130,
                    
                  ),
                )
              ],
            ),
          )),
  
        
        ),
    );
  }
}
