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
      debugShowCheckedModeBanner: false,
      title: 'First Project',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Project'),
        centerTitle: false,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 24,
        ),
        titleSpacing: 16,
        actions: const [
          Icon(Icons.add),
          Icon(Icons.add),
        ],
        leadingWidth: 56,
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.rectangle,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              spreadRadius: 4,
              offset: Offset(6, 6),
            ),
          ],
          // border: Border.all(
          //   color: Colors.black,
          //   width: 2,
          // ),
          borderRadius: BorderRadiusDirectional.circular(40),
        ),
        child: const Text(
          'loreum ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
          style: TextStyle(
            // backgroundColor: Colors.yellow,
            fontSize: 24,
            fontWeight: FontWeight.normal,
            color: Colors.white,
            // decoration: TextDecoration.underline,
            decorationThickness: 1,
            decorationColor: Colors.blue,
          ),
          textDirection: TextDirection.ltr,
          // maxLines: 3,
          // overflow: TextOverflow.ellipsis,
          // selectionColor: Colors.green,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blue,
        child: const Text('+'),
        splashColor: Colors.red,
      ),
    );
  }
}
