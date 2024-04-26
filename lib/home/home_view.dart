import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(builder: (BuildContext context, constraints) {
      if (constraints.maxWidth < 700) {
        return SafeArea(child: _colsView());
      } else {
        return SafeArea(child: _rowView());
      }
    }));
  }
}

Widget _colsView() {
  return Center(
    child: Column(
      children: [
        const SizedBox(
          height: 200,
        ),
        const Text(
          'ID CARD',
          style: TextStyle(
              fontSize: 42, fontWeight: FontWeight.w700, color: Colors.blue),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.blue.shade400,
              width: 5,
            ),
            image: const DecorationImage(
              image: NetworkImage(
                'https://media.discordapp.net/attachments/950925385397321789/958537277032767588/IMG20220330082417.jpg?ex=662c53e7&is=662b0267&hm=888d7587b66d5346e3af8c2decc6a4cfe3d99ac3159203eecca5a761ffcc917e&=&format=webp&width=466&height=350',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.blue.shade400, width: 1.0),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Nama ',
                    style: TextStyle(color: Colors.blue.shade400),
                  ),
                ),
                Container(
                  width: 100,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.blue.shade400, width: 1.0),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Email ',
                    style: TextStyle(color: Colors.blue.shade400),
                  ),
                ),
                Container(
                  width: 100,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.blue.shade400, width: 1.0),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Jabatan ',
                    style: TextStyle(color: Colors.blue.shade400),
                  ),
                ),
                Container(
                  width: 100,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.blue.shade400, width: 1.0),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'No Telp ',
                    style: TextStyle(color: Colors.blue.shade400),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.blue.shade400, width: 1))),
                  child: Text(
                    'Rian Alfazri Khoirulloh ',
                    style: TextStyle(color: Colors.blue.shade400),
                  ),
                ),
                Container(
                  width: 200,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.blue.shade400, width: 1))),
                  child: Text(
                    'rian.alfazri96@gmail.com',
                    style: TextStyle(color: Colors.blue.shade400),
                  ),
                ),
                Container(
                  width: 200,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.blue.shade400, width: 1))),
                  child: Text(
                    'CEO',
                    style: TextStyle(color: Colors.blue.shade400),
                  ),
                ),
                Container(
                  width: 200,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.blue.shade400, width: 1))),
                  child: Text(
                    '08966367770264',
                    style: TextStyle(color: Colors.blue.shade400),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _rowView() {
  return Center(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        'ID CARD',
        style: TextStyle(
            fontSize: 42, fontWeight: FontWeight.w700, color: Colors.blue),
      ),
      const SizedBox(
        height: 50,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.blue.shade400, // Warna border
                width: 5, // Lebar border
              ),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://media.discordapp.net/attachments/950925385397321789/958537277032767588/IMG20220330082417.jpg?ex=662c53e7&is=662b0267&hm=888d7587b66d5346e3af8c2decc6a4cfe3d99ac3159203eecca5a761ffcc917e&=&format=webp&width=466&height=350',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade400, width: 1.0),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'Nama ',
                  style: TextStyle(color: Colors.blue.shade400),
                ),
              ),
              Container(
                width: 100,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade400, width: 1.0),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'Email ',
                  style: TextStyle(color: Colors.blue.shade400),
                ),
              ),
              Container(
                width: 100,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade400, width: 1.0),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'Jabatan ',
                  style: TextStyle(color: Colors.blue.shade400),
                ),
              ),
              Container(
                width: 100,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade400, width: 1.0),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'No Telp ',
                  style: TextStyle(color: Colors.blue.shade400),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.blue.shade400, width: 1))),
                child: Text(
                  'Rian Alfazri Khoirulloh ',
                  style: TextStyle(color: Colors.blue.shade400),
                ),
              ),
              Container(
                width: 200,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.blue.shade400, width: 1))),
                child: Text(
                  'rian.alfazri96@gmail.com',
                  style: TextStyle(color: Colors.blue.shade400),
                ),
              ),
              Container(
                width: 200,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.blue.shade400, width: 1))),
                child: Text(
                  'CEO',
                  style: TextStyle(color: Colors.blue.shade400),
                ),
              ),
              Container(
                width: 200,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.blue.shade400, width: 1))),
                child: Text(
                  '08966367770264',
                  style: TextStyle(color: Colors.blue.shade400),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  ));
}
