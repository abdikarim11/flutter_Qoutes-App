import 'dart:ui';

import 'package:flutter/material.dart';


class wisdomlove extends StatefulWidget {
  const wisdomlove({super.key});

  @override
  State<wisdomlove> createState() => _wisdomloveState();
}

class _wisdomloveState extends State<wisdomlove> {



  int _index= 0;

  List qoutes =[
'Waan ku jeclahay, taasina waa bilaawga iyo dhamaadka wax walbaa.',
'Aduunka waxaad ku tahay hal qof, laakin qof baad aduun u tahay.',
'Maalin walbaa adigaan ku sii jeclaadaa',
'Qalbigeyga adigaa leh, adigaana lahaan doono',
'Dhoolacadeyntaadu waa waxa ugu quruxda ee aan ebid arko.',
'Haddii uu qof iweydiiyo inaan labo eray kaa dhaho, Waxaan dhihi lahaa si fudud “qoftu waa cajiib',
'Waan ku jeclahay, taasina waa bilaawga iyo dhamaadka wax walbaa',
'Uma baahni janno maxaa  yeelay adigaan ku helay. Uma baahni riyooyin maxaa yeelay adigaanba hadda ku heystaa.'
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('LoveQoutes Afsomali'),
      ),
      backgroundColor: Color.fromARGB(255, 7, 255, 19),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          
           Container(
            width: 350,
            height: 200,
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 240, 235, 105)
            
            ),
            
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(qoutes[_index],style: TextStyle(fontStyle: FontStyle.italic,  fontSize: 18,fontWeight: FontWeight.bold),)),
            )),
          
          Divider(thickness: 0.5,),
        TextButton.icon(  
    onPressed: _showQutes,
style: TextButton.styleFrom(
 backgroundColor: Color.fromARGB(255, 177, 33, 76)
),

    
  icon: Icon(
    
    Icons.wb_sunny,
    
  ),
  label: Text(' NEXT QOUTE!', style: TextStyle(color: Colors.white),), 

),


      ]),
    );
  }

  void _showQutes() {
    setState(() {
     _index= ( _index + 1) % qoutes.length;
      
    });
    

    
  }
}