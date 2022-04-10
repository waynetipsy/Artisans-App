import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({ Key? key }) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
  final double categoryHeight = MediaQuery.of(context).size.height * 0.3;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          children: [
            Container(
              
              width: 150,
              margin: const EdgeInsets.only(right: 20),
              height: categoryHeight,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15)
              ),
              color: Colors.orange),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                 Text('Artisans'),
               ],
               ),
              ),
            ),
            Container(
              width: 150,
              margin: const EdgeInsets.only(right: 20),
              height: categoryHeight,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15)
              ),
              color: Colors.orange),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                 Text('Artisans'),
               ],
               ),
              ),
            ),
            Container(
              width: 150,
              margin: const EdgeInsets.only(right: 20),
              height: categoryHeight,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15)
              ),
              color: Colors.orange),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                 Text('Artisans'),
               ],
               ),
              ),
            ),
            Container(
              width: 150,
              margin: const EdgeInsets.only(right: 20),
              height: categoryHeight,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15)
              ),
              color: Colors.orange),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                 Text('Artisans'),
               ],
               ),
              ),
            ),
            Container(
              width: 150,
              margin: const EdgeInsets.only(right: 20),
              height: categoryHeight,
            decoration: const  BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15)
              ),
              color: Colors.orange),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                 Text('Artisans'),
                  ],
                 ),
               ),
             ),
          ],
        ),
      ),
    );
  }
}