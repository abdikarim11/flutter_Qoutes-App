

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_qoutes_app/englishqoute.dart';
import 'package:flutter_qoutes_app/home.dart';
import 'package:flutter_qoutes_app/loveqoutes.dart';

class firstScreen extends StatelessWidget {
  const firstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
              
              child: Container(
                width: 320,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.blue
                  ,
                  borderRadius: BorderRadius.circular(12),
                   boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
                  
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('WELCOME QOUTES APP YOU WILL GET MORE QOUTES TWO LANGUAGE ENGLISH AND SOMALI LANGUAGE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                )),
              ),
            ),
            SizedBox(height: 20,),

            
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>wisdomlove(),));
                
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
                ),
                child:  Center(child: Text('love qoutes  afsomali',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(
              height: 14,
            ),
               InkWell(
                 onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => wisdom()));
                
              },
               child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15)
                ),
                child:  Center(child: Text('motivation  qoutes afsomali',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),)),
                         ),
             ),
            SizedBox(
              height: 10,
            ),
               InkWell(
                  onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => wisdomenglish(),));
                
              },

               child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15)
                ),
                child:  Center(child: Text('English qoutes ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                         ),
             ),
         
          ],
        ),
      ),
    );
  }
}