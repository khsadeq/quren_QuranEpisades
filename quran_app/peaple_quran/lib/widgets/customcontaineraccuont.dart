import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container get x {
  return Container(
     decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

            ),
    margin: EdgeInsets.all(6),
    width: 300,
    height: 150,

    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: const [

            Icon(Icons.star, size:30 ,),

            Text('الفواتير المستخدمة',style: TextStyle(fontSize: 30),),

            Icon(Icons.person_pin ,size: 30,)
          ],
        ),


        Container(
      width: 330,
      child: Divider( thickness: 2,),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: const [

                  Icon(
                    Icons.do_not_disturb_on_total_silence,
                    color: Colors.green,
                  ),
                  Text(
                    'نقص دين',
                    style: TextStyle(color: Colors.green,fontSize: 17),
                  ),
                ],
              ),
            ),

            Container(
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'د.ع',
                        style: TextStyle(color: Colors.black,fontSize: 18),
                      ),
                      Text(
                        '0',
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'د.ع',
                        style: TextStyle(color: Colors.black,fontSize: 18),
                      ),
                      Text(
                        '0',
                        style: TextStyle(color: Colors.red, fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              child: Column(
                children: [
                  // ElevatedButton(onPressed:  n, child: child),
                  MaterialButton(
                    onPressed: () {
                      var context;
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("اضافة دين"),
                              content: Row(
                                children: [
                                  TextFormField(
                                    //  autocorrect: true,

                                    decoration: new InputDecoration(
                                      // enabled: true,
                                      label: Row(
                                        children: [
                                          const SizedBox(
                                            width: 190,
                                          ),
                                          const Text("المبلغ د.ع"),
                                        ],
                                      ),

                                      icon: const Icon(Icons.search),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    //  autocorrect: true,

                                    decoration: new InputDecoration(
                                      // enabled: true,
                                      label: Row(
                                        children: [
                                          const SizedBox(
                                            width: 190,
                                          ),
                                          const Text("المبلغ دولار"),
                                        ],
                                      ),

                                      icon: const Icon(Icons.search),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    //  autocorrect: true,

                                    decoration: new InputDecoration(
                                      // enabled: true,
                                      label: Row(
                                        children: [
                                          const SizedBox(
                                            width: 190,
                                          ),
                                          const Text("البيان"),
                                        ],
                                      ),

                                      icon: const Icon(Icons.search),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },

                    child: Column(
                      children: const [
                        Icon(
                          Icons.add_circle_outline,
                          color: Colors.redAccent,
                        ),
                        Text(
                          ' اضافة دين',
                          style: TextStyle(color: Colors.red,fontSize: 18),
                        ),
                        // Text(text,
                        //     style: TextStyle(
                        //         fontSize: 23, fontWeight: FontWeight.bold, color: textcolor)),
                      ],
                    ),
                    // child: const Text("click Button"),
                    // style: ElevatedButton.styleFrom(
                    //   backgroundColor: Color(Colors.white),
                    //   padding: const EdgeInsets.symmetric(horizontal: 10),
                    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    //   elevation: 100,
                    //   shadowColor: Colors.blue,
                    //   textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    // ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}
