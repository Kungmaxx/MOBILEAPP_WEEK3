import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //build is render similar to react
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.pinkAccent),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CS app lol'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              debugPrint('leading icon pressed');
            },
          ), //Add AppBar on the upper left on screen
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                debugPrint('leading actions icon pressed');
              },
            ),
            IconButton(
              icon: const Icon(Icons.info),
              onPressed: () {
                debugPrint('leading info icon pressed');
              },
            ),
          ],
        ),

        body: const Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),

              Image(
                image: AssetImage('assets/download.jpg'),
                width: 400,
              ),

              Text(
                'ขอบคุณที่ใช้บริการ',
                style: TextStyle(fontSize: 30),
              ),

              Text(
                'เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),

              SizedBox(
                height: 50,
              ), //increase distance between picture

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'สรุปรายละเอียดการชาร์จ',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.grey,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'วันที่ชาร์จ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 420,
                  ),
                  Text(
                    '9 กันยายน 2567',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),

                  /*ElevatedButton(
                    onPressed: () {
                      debugPrint(
                          'pressed button'); //you can use print() but debugPrint() is better for this statement
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),*/
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.battery_0_bar,
                    color: Colors.grey,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'สถานีชาร์จ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 390,
                  ),
                  Text(
                    'PEA VOLTA บางจาก',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.power,
                    color: Colors.grey,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'ประเภทหัวชาร์จ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 465,
                  ),
                  Text(
                    'CC82',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timelapse,
                    color: Colors.grey,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'ระยะเวลาการชาร์จ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 420,
                  ),
                  Text(
                    '00:12:32',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.power,
                    color: Colors.grey,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'จำนวนหน่วย',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 445,
                  ),
                  Text(
                    '9.314 kWh',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 50,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ค่าบริการรวมทั้งสิ้น',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.purple,
                    ),
                  ),
                  SizedBox(
                    width: 320,
                  ),
                  Text(
                    '49.36 บาท',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child:
              const Icon(Icons.shopping_cart), //Icons that program has for us
        ), //Button on the lower right of screen
      ),
    );
  }
}

/*
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 255, 119, 164))),
      home: Scaffold(
        appBar: AppBar(
          title: Text('CS app'),
        ),
        body: Text("Hello, World!"),
      ),
    ),
  );
}
*/

/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pornpipat Counter:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
*/