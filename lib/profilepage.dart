import 'dart:async';

import 'package:bottom_navs/widgets/pages/delete_account.dart';
import 'package:flutter/material.dart';
import './widgets/pages/edit_image.dart';
import './widgets/pages/edit_email.dart';
import 'widgets/pages/edit_name.dart';
import './widgets/pages/contact_support.dart';
import './widgets/pages/edit_address.dart';
import './widgets/pages/edit_phone.dart';
import '../widgets/display_image_widget.dart';
import '../user/user_data.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserData.myUser;

    return Scaffold(
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 10,
          ),
         const  Center(
              child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Edit Profile',
                
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  )
                )
              ),
          InkWell(
              onTap: () {
                navigateSecondPage(const EditImagePage());
              },
              child: DisplayImage(
                imagePath: user.image,
                onPressed: () {},
              ),
            ),
           const SizedBox(height: 20),
          buildUserInfoDisplay(user.name, 'Name', const EditNameFormPage()),
          buildUserInfoDisplay(user.email, 'Email', const EditEmailFormPage()),
          buildUserInfoDisplay(user.phone, 'Phone', const EditPhoneFormPage()),
          buildUserInfoDisplay(user.address, 'Address', const EditAddressFormPage()),
          buildUserInfoDisplay(user.delete, 'Delete Account', const DeleteAccount()),
          buildUserInfoDisplay(user.contact, 'Contact Support', const ContactSupport() )
        ],
      ),
    );
  }

  // Widget builds the display item with the proper formatting to display the user's info
  Widget buildUserInfoDisplay(String getValue, String title, Widget editPage) =>
      Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            const  SizedBox(
                height: 1,
              ),
              Container(
                  width: 350,
                  height: 40,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  )
                ),
              ),
                  child: Row(
                    children: [
                    Expanded(
                        /*child: TextButton(
                            onPressed: () {
                              navigateSecondPage(editPage);
                            },  */
                            child: Text(
                              
                              getValue,
                              style: const TextStyle(fontSize: 16,
                              fontWeight: FontWeight.bold, 
                              height: 1.4,
                            color: Colors.black
                              ),
                            ),
                          ),
                        
                        IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                         navigateSecondPage(editPage);
                      },
                      color: Colors.orange,
                      iconSize: 28,
                    ),
                  ]
                ),
              ),
            ],
          )
        );

  

  FutureOr onGoBack(dynamic value) {
    setState(() {});
  }

    // Handles navigation and prompts refresh.
    void navigateSecondPage(Widget editForm) {
    Route route = MaterialPageRoute(builder: (context) => editForm);
    Navigator.push(context, route).then(onGoBack);
  }
}