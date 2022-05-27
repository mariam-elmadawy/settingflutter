// import packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting/about/about.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:setting/personal/personal.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Setting extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<Setting> {
  @override

  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.green,
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: const [
                Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            const Divider(
              height: 15,
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Personal Information',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                IconButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PersonalInfo()),
                  );
                },
                    icon: const Icon(Icons.arrow_forward_ios, color: Colors.green,)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: const [
                Icon(
                  Icons.settings,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'General setting',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(
              height: 15,
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('About',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                IconButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const about()),
                  );
                },
                    icon: Icon(Icons.info, color: Colors.green,)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Contact us',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                IconButton(onPressed:(){
                 launch('tel:+200102095402');
                } ,
                    icon: Icon(Icons.call, color: Colors.green,)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Email Customer Support',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                IconButton(onPressed:(){
                  launch('mailto:pproject891@gmail.com?subject=This is Subject Title&body=This is Body of Email');
                } ,
                    icon: Icon(Icons.mail, color: Colors.green,)),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(6.0),
                height: 60.0,
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    "log Out",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}