import 'dart:ui';

import 'package:flutter/material.dart';

class wisdomenglish extends StatefulWidget {
  const wisdomenglish({super.key});

  @override
  State<wisdomenglish> createState() => _wisdomenglishState();
}

class _wisdomenglishState extends State<wisdomenglish> {
  int _index = 0;

  List qoutes = [
    'If you set your goals ridiculously high and its a failure, you will fail above everyone elses success. -James Cameron',
    'The greatest glory in living lies not in never falling, but in rising every time we fall. -Nelson Mandela',
    'If you look at what you have in life, you\'ll always have more. If you look at what you don\'t have in life, you\'ll never have enough. -Oprah Winfrey',
    'If you set your goals ridiculously high and it\'s a failure, you will fail above everyone else\'s success. -James Cameron',
    'Your time is limited, so don\'t waste it living someone else\'s life. Don\'t be trapped by dogma – which is living with the results of other people\'s thinking. -Steve Jobs',
    'Do not go where the path may lead, go instead where there is no path and leave a trail. -Ralph Waldo Emerson',
    'The best and most beautiful things in the world cannot be seen or even touched — they must be felt with the heart. -Helen Keller',
    'Don\'t judge each day by the harvest you reap but by the seeds that you plant. -Robert Louis Stevenson',
    'Always remember that you are absolutely unique. Just like everyone else. -Margaret Mead',
    'When you reach the end of your rope, tie a knot in it and hang on. -Franklin D. Roosevelt',
    'Whoever is happy will make others happy too." -Anne Frank',
    ' "It is during our darkest moments that we must focus to see the light." -Aristotle\',\'"Tell me and I forget. Teach me and I remember. Involve me and I learn.\" -Benjamin Franklin',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EnglishQoutes'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.amber,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            width: 350,
            height: 200,
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.greenAccent),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                qoutes[_index],
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18,fontWeight: FontWeight.bold),
              )),
            )),
        Divider(
          thickness: 0.5,
        ),
        TextButton.icon(
          onPressed: _showQutes,
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 177, 33, 76)),
          icon: Icon(
            Icons.wb_sunny,
          ),
          label: Text(
            'NextQoutes!',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ]),
    );
  }

  void _showQutes() {
    setState(() {
      // _index += 1;

        _index= ( _index + 1) % qoutes.length;
    });
  }
}
