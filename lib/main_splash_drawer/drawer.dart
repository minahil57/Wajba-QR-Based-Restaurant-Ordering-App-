import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../user_authentication_module/sign_in.dart';

class drawer_screen extends StatelessWidget {
  const drawer_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,

      child:
      ListView(

        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30,),
                  child:
                  Column(
                      children: const [
                        CircleAvatar(
                          minRadius: 50,
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage("assets/images/logo/girl.jpeg",
                          ),
                        ),

                      ]
                  ),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                      Text('Minahil Akhtar',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,

                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                    ]
                ),

              ]
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(padding: EdgeInsets.only(left: 40),
            child:
            Text('Learn more',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
              ),
            ),
          ),


          const Divider(
            thickness: 1,
          ),

          const ListTile(

            leading: Icon(Icons.article,color: Colors.orangeAccent,),
            title: Text("My Orders",style: TextStyle(
              //fontStyle: FontStyle.italic,
              fontSize: 15,
              color: Colors.black,
            ),),
          ),

          const ListTile(
            leading: Icon(Icons.account_circle,color: Colors.orangeAccent,),
            title: Text("My Profile",style: TextStyle(
              //fontStyle: FontStyle.italic,
              fontSize: 15,
              color: Colors.black,
            ),),
          ),

          const ListTile(
            leading: Icon(Icons.announcement_rounded,color: Colors.orangeAccent,),
            title: Text("Vouchers",style: TextStyle(
              //fontStyle: FontStyle.italic,
              fontSize: 15,
              color: Colors.black,
            ),),
          ),

          const ListTile(
            leading: Icon(Icons.help_center,color: Colors.orangeAccent,),
            title: Text("Help Center",style: TextStyle(
              //fontStyle: FontStyle.italic,
              fontSize: 15,
              color: Colors.black,
            ),),
          ),
          const ListTile(
            leading: Icon(Icons.account_balance_outlined,color: Colors.orangeAccent,),
            title: Text("About us",style: TextStyle(
              //fontStyle: FontStyle.italic,
              fontSize: 15,
              color: Colors.black,
            ),),
          ),

          const SizedBox(
            height: 30,
          ),
          ListTile(
            leading: const Icon(Icons.logout,color: Colors.orangeAccent,),
            title: const Text("Log Out",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                //fontStyle: FontStyle.italic,
                fontSize: 15,
                color: Colors.black,
              ),),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoginPage(title: '')));
            },
          ),
        ],
      ),
    );
  }
}