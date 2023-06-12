import 'dart:async';
import 'dart:typed_data';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:wajba/Menu_display_files/menu_screen.dart';
import 'package:wajba/Prepration_time_and_reviews/prepration_time.dart';
import 'package:wajba/cart/cart.dart';


class MyApp_qr extends StatefulWidget {
  @override
  _MyApp_qrState createState() => _MyApp_qrState();
}

class _MyApp_qrState extends State<MyApp_qr> {
  Uint8List bytes = Uint8List(0);
  late TextEditingController _outputController;
  @override
  initState() {
    this._outputController = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.grey[300],
        body:Builder(
          builder: (BuildContext context) {
            return ListView(
              children: <Widget>[
                _qrCodeWidget(this.bytes, context),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 20),
                      TextField(
                        controller: this._outputController,
                        maxLines: 2,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.wrap_text),
                          helperText:
                          'The barcode or qrcode you scan will be displayed in this area.',
                          hintText:
                          'The barcode or qrcode you scan will be displayed in this area.',
                          hintStyle:  TextStyle(fontSize: 15),
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 7, vertical: 15),
                        ),
                      ),
                      const SizedBox(height: 20),
                      this._buttonGroup(),
                      const SizedBox(height: 70),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
    )
    );
  }

  Widget _qrCodeWidget(Uint8List bytes, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 6,
        child: Column(
          children: <Widget>[
            Padding(
              padding:
              const EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 90),
              child: Column(
                children: <Widget>[
                  SizedBox(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              'assets/images/logo/wajba-logo-color-orange.png',
                              width: 270, height: 160, fit: BoxFit.fill),
                          const SizedBox(
                            height: 60,
                          ),
                          const Text(
                            'Welcome To Wajba!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              //fontStyle: FontStyle.italic,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                          const Text(
                            'Please Scan the QR code Placed on the Table',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              //fontStyle: FontStyle.italic,
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],)
                  ),

                ],
              ),
            ),
          ],

        ),

      ),
    );
  }

  Widget _buttonGroup() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 120,
            child: InkWell(
              onTap:
              _scan,
              child: Card(
                child: Column(
                  children: const <Widget>[
                    Expanded(
                      flex: 2,
                      child: Icon(Icons.add_a_photo, color: Colors.orangeAccent,
                        size: 50,),
                    ),
                    Divider(height: 20),
                    Expanded(flex: 1, child: Text("Scan")),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future _scan() async {
    await Permission.camera.request();
    String? barcode = await scanner.scan();
    if (barcode == null) {
      print('nothing return.');
    } else {
      this._outputController.text = barcode;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  const wajba()),
      );
    }
  }
}
