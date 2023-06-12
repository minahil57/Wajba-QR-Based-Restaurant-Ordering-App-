import 'package:flutter/material.dart';

import '../Menu_display_files/menu_screen.dart';

class Prepration_time extends StatefulWidget {
  const Prepration_time({Key? key}) : super(key: key);

  @override
  State<Prepration_time> createState() => _Prepration_timeState();
}

class _Prepration_timeState extends State<Prepration_time> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
            children: [
                const SizedBox(
                    height: 49,
              ),
              Row(
                children:  [
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      child: const Icon(Icons.close,
                      color: Colors.orangeAccent,
                      size: 35,
                  ),
                  onTap: () {
                    Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const wajba(),));
                  },
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  const Text('Your Order',
                    style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,

                  ),
              ),

            ],
        ),
                  const Text('La-Montana Pir-Sohawa',
                    style: TextStyle(
                     fontSize: 15,
                      fontWeight: FontWeight.w100,

                  ),
                  ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/backgroundimage/6a0ead42d3907b1310e67c33cb638211.gif",
                    height: 150.0,
                    width: 150.0,
                    colorBlendMode: BlendMode.luminosity,
                  ),
                  const Text('Estimated Prepration time ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,

                    ),
                  ),
                  const Text('50-60 mins',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,

                    ),
                  ),
                ],
              ),
              ExpansionTile(
                  initiallyExpanded: true,
                  iconColor: Colors.orangeAccent,
                  title: const Text('Order Details',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Padding(padding: const EdgeInsets.only(left: 20),
                      child:
                      Column(
                       // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Order No. ',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,

                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Order From ',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,

                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Delivery Table ',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,

                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Total ',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,

                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                        ],
                      ),

                    ),
                    Padding(padding: const EdgeInsets.only(right: 20),
                      child:
                      Column(
                       // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end
                        ,
                        children: const [
                          Text('#ck37-d1yy ',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,

                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('La Montana Pir Sohawa ',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Colors.orangeAccent,

                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('F1-12 ',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,

                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Rs-2700 ',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,

                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                        ],
                      ),

                    ),
                    ],),
                  ]
              ),
              ExpansionTile(
                  initiallyExpanded: true,
                  iconColor: Colors.orangeAccent,
                  title: const Text('View Details',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Padding(padding: const EdgeInsets.only(left: 20),
                          child:
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              RichText(
                                text: const TextSpan(children: [
                                  TextSpan(
                                      text: '1x ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,fontSize: 13,color: Colors.black )),
                                  TextSpan(
                                      text: '  Saag with Makai ki Roti ',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic, color: Colors.black)),
                            ]),),
                              const SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: const TextSpan(
                                  text: '1x ',
                                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13,color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '  Biryani',
                                      style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.w400,fontSize: 13, color:  Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('items ',
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('Subtotal ',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('Serice Charges ',
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('Platform ',
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text('Total (incl. GST) ',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),


                            ],
                          ),

                        ),
                        Padding(padding: const EdgeInsets.only(right: 20),
                          child:
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end
                            ,
                            children: const [
                              Text('Rs 399.00',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,

                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Rs 1999.00',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  //color: Colors.orangeAccent,

                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('2.00 ',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Rs 2700 ',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Rs 202.00 ',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Rs 4.99 ',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text('Rs 2804.99 ',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),



                            ],
                          ),

                        ),
                      ],),
                  ]
              ),
            ],
        ),
      ),
    );
    }
}