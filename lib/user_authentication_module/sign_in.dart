import 'package:flutter/material.dart';
import 'package:wajba/Menu_display_files/menu_screen.dart';
import 'package:wajba/QR_code_screen/bottomsheet.dart';
import 'package:wajba/QR_code_screen/qr_code.dart';
import 'package:wajba/user_authentication_module/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Image.asset("assets/images/backgroundimage/1000_F_156533943_i322J91kowv9eG6Q80bT8IJt19sYMSqu.jpeg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
    SingleChildScrollView(
          child:Card(
      elevation: 10,
      shadowColor: Colors.black,
      //margin: const EdgeInsets.fromLTRB(10,60,10,10),
            margin: const EdgeInsets.only(left: 10,right: 10,top: 60),
      color: Theme.of(context).colorScheme.background,
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
    ),
              child:Container(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    const SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      "assets/images/logo/wajba-logo-color-orange.png",
                      height: 120.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Welcome Back!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        //fontStyle: FontStyle.italic,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'Log in to your existance account on Wajba',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        //fontStyle: FontStyle.italic,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Please Enter Your Email';
                              }
                              return null;
                            },
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: 'Enter your email',
                              prefixIcon  : const Icon(Icons.email),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                                borderSide: BorderSide(
                                  width: 1, color: Theme.of(context).colorScheme.surface,),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Please Enter your Password';
                              }
                              return null;
                            },
                            maxLines: 1,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock),
                              hintText: 'Enter your password',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                                borderSide: BorderSide(
                                  width: 1, color: Theme.of(context).colorScheme.surface,),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                              CheckboxListTile(
                            title: const Text("Remember me"),
                            contentPadding: EdgeInsets.zero,
                            value: rememberValue,
                            activeColor: Theme.of(context).colorScheme.primary,
                            onChanged: (newValue) {
                              setState(() {
                                rememberValue = newValue!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 120.0),
                                  ),
                                  foregroundColor: MaterialStateProperty.all<
                                      Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<
                                      Color>(Theme
                                      .of(context)
                                      .colorScheme
                                      .primary,),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        side: BorderSide(color: Theme
                                            .of(context)
                                            .colorScheme
                                            .primary,),
                                        borderRadius: BorderRadius.circular(
                                            30.0),
                                      )
                                  )
                              ),
                              onPressed:
                                  () {
                                    Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) => MyAppy(),

                                      ),
                                    );

                              },
                              child: Text(
                                  "Log in".toUpperCase(),
                                  style: const TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  )
                              )
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget> [
                              const Text('Not Registered Yet?'),
                              TextButton(
                                onPressed:
                                    () {
                                  Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) =>const RegisterPage(),

                                    ),
                                  );
                                },
                                child: const Text('Create an account'),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed:
                                () {
                              Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) =>  wajba(),

                                ),
                              );
                            },
                            child: const Text('Skip for Now'),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
    ),]
    );
  }
}