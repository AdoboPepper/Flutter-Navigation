import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.phone_android,
                size: 50,
              ),
              // Welcome to MATCHA
              const SizedBox(height: 10),
              const Text(
                'MATCHA',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 10),
              // log in first
              const Text(
                'It\'s a color and a flavor!',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
              const SizedBox(height: 50),
              //username or email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green[50],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email or Username'
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // password textField
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green[50],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',

                      ),
                    ),
                  ),
                ),
              ),
              // sign in button
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>pageA()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green[900],
                    ),
                    child: const Center(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'No Account yet?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    ' Reigster Now!',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ],
              ),
            ],),
        ),
      ),

    );
  }
}

class pageA extends StatefulWidget {
  const pageA({Key? key}) : super(key: key);

  @override
  State<pageA> createState() => _pageAState();
}

class _pageAState extends State<pageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage())); },),
        centerTitle: true,
        title: Text('Page A'),
      ),
      body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Container(
               height: 180,
               width: 360,
               color : Colors.green[200],
             ),
             Container(
               height: 180,
               width: 360,
               color : Colors.green[300],
             ),
             Container(
               height: 180,
               width: 360,
               color : Colors.green[400],
             ),
             ElevatedButton(
               onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>pageB())); },
               child: Text('Page B'),)

           ],
         ),
      ),
    );
  }
}

class pageB extends StatefulWidget {
  const pageB({Key? key}) : super(key: key);

  @override
  State<pageB> createState() => _pageBState();
}

class _pageBState extends State<pageB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>pageA())); },),
        centerTitle: true,
        title: Text('Page B'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color : Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color : Colors.green,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color : Colors.yellow[400],
                      ),
                    ]
                ),

              ),
            ),
            ElevatedButton(
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>pageC())); },
              child: Text('Page C'),
            ),
          ],
        ),
      ),
    );
  }
}
class pageC extends StatefulWidget {
  const pageC({Key? key}) : super(key: key);

  @override
  State<pageC> createState() => _pageCState();
}

class _pageCState extends State<pageC> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>pageB())); },),
        centerTitle: true,
        title: Text('Page C'),
      ),
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color : Colors.red,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color : Colors.green,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color : Colors.yellow[400],
                        ),

                      ]
                    ),
                  ),
                ),
                Container(
                  height: 180,
                  width: 360,
                  color : Colors.blue[200],
                ),
                Container(
                  height: 180,
                  width: 360,
                  color : Colors.blue[300],
                ),
               ElevatedButton(
                    onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage())); },
                    child: Text('Sign out'),
               ),
              ],
            ),
      ),
    );
  }
}



