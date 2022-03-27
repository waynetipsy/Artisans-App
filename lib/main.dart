import 'package:bottom_navs/bookingpage.dart';
import 'package:bottom_navs/homepage.dart';
import 'package:bottom_navs/profilepage.dart';
import 'package:bottom_navs/walletpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screens = [
   const HomePage(),
   const BookingPage(),
   const  WalletPage(),
     const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar:  BottomNavigationBar(
        //backgroundColor: Colors.orange,
      //type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
    onTap: (index) => setState(() => currentIndex = index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.orange,
        ),

         BottomNavigationBarItem(
          icon: Icon(Icons.book_online),
          label: 'Booking',
          backgroundColor: Colors.orange,
        ),
        
         BottomNavigationBarItem(
          icon: Icon(Icons.money),
          label: 'Wallet',
          backgroundColor: Colors.orange
         ),
          BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          backgroundColor: Colors.orange,
        
          ),
        ],
      ),
    );   
  }
}
