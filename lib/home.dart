import 'dart:ui';

import 'package:flutter/material.dart';


class wisdom extends StatefulWidget {
  const wisdom({super.key});

  @override
  State<wisdom> createState() => _wisdomState();
}

class _wisdomState extends State<wisdom> {



  int _index= 0;

  List qoutes =[
    'Noloshu waxay macno badan yeelataa marki aad garowsato xaqiiqda fudud ee ah in fursad isku mid ah aysan laba jeer ku soo mareyn. Ka faa’iideyso fursad kasta.',
    'Tartanka u dhaxeeya Libaax & Deero, marar badan waxaa guuleystay Deerada sababtoo ah Libaaxa wuxuu u ordayay oo keliya cunto, Deeraduna waxay u ordeysay Nolol. Xusuuso: Ujeedo (hadaf) ayaa aad uga muhiimsan Baahida. Ha noqon qof cunto keliya u orda',
'Ha isku mashquulin hana ka fekirin gefkii shalayto, waayo berri waa fursad kale oo aad ku sixi kartid intii shalay qabyada kaa ahayd.',
'Awood uma lihid  inaad bedesho  muuqaalkaaga si aad u noqoto kan dadka ugu quruxda badan, laakiin waxaad awood u leedahay inaad bedesho dhaqankaaga si aad u noqoto kan dadka ugu akhlaaqda wanaagsan.',
'Muhim Maaha inaad ka xanaaqdo wax dhabarkaaga laga yiri waayo hortaada lagama odhan karo.',
'Ha ku dadaalin inaad dhisato guri weyn oo aad ku noolaato, laakiin ku dadaal inaad dhisato guri aad ku noolaato oo xasiloon oo ay ka dhex iftiimayso akhlaaq wanaagsan iyo Allah ka cabsi.',
'Howl badan ayaan dib u dhignaa inagoo leh “Waqtigaan haboonayn”, Waqtiga habooni waa dhalanteed, dhalanteedka lama qaban karo, ee ereygaas ka siib maskaxdaada.',
 'Tartanka u dhaxeeya Libaax & Deero, marar badan waxaa guuleystay Deerada sababtoo ah Libaaxa wuxuu u ordayay oo keliya cunto, Deeraduna waxay u ordeysay Nolol. Xusuuso: Ujeedo (hadaf) ayaa aad uga muhiimsan Baahida. Ha noqon qof cunto keliya u orda',

'Ereyga wanaagsani waa furaha (Password) quluubta dadka kale. Adeegso.',
'Muhim Maaha inaad ka xanaaqdo wax dhabarkaaga laga yiri waayo hortaada lagama odhan karo.',
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('MOtivitionQoutes Afsomali'),
      ),
      backgroundColor: Color.fromARGB(255, 255, 7, 238),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          
           Container(
            width: 350,
            height: 200,
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.greenAccent
            
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
  label: Text('next qoutes!', style: TextStyle(color: Colors.white),), 

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