import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle (const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Page',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding (
        padding: const EdgeInsets.all(20),
        child:Column(
         children: [
          const SizedBox(height: 40),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(''),
          ),


           const SizedBox(height: 20),
           SizedBox(
             width: double.infinity,
             child:ElevatedButton(onPressed:() {},
                 style: ElevatedButton.styleFrom(
                   padding: const EdgeInsets.all(15),
                 ),
                 child: const Text('Personal Info')
             ),

           ),


           const SizedBox(height: 20),
           SizedBox(
             width: double.infinity,
             child:ElevatedButton(onPressed:() {},
                 style: ElevatedButton.styleFrom(
                   padding: const EdgeInsets.all(15),
                 ),
                 child: const Text('New Booking')
             ),

           ),

           const SizedBox(height: 20),
           SizedBox(
             width: double.infinity,
             child:ElevatedButton(onPressed:() {},
                 style: ElevatedButton.styleFrom(
                   padding: const EdgeInsets.all(15),
                 ),
                 child: const Text('Existing Booking')
             ),

           ),

           const SizedBox(height: 20),
           SizedBox(
             width: double.infinity,
             child:ElevatedButton(onPressed:() {},
                 style: ElevatedButton.styleFrom(
                   padding: const EdgeInsets.all(15),
                 ),
                 child: const Text('Preview')
             ),

           ),

           const SizedBox(height: 20),
           SizedBox(
            width: double.infinity,
              child:ElevatedButton(onPressed:() {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
            ),
            child: const Text('Sign Out')
      ),

            ),


        ],
      ),
    ),
    );

  }
  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10,
              ),
            ],
        ),
        child: ListTile(
        title: const Text('title'),
    subtitle: const Text('subtitle'),
    leading: Icon(iconData),
    trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
    tileColor: Colors.white,
        ),
  );
}
}
