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
      backgroundColor: Colors.white,
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
      body: Image(
        // height: 200,
        // width: 200,
        filterQuality: FilterQuality.low,
        fit: BoxFit.cover,
        image: const AssetImage(
          'assets/images/error.png',
        ),
        // image: NetworkImage(
        //   'https://hips.hearstapps.com/hmg-prod/images/morning-glories-65bd6dcc15366.jpg',
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blue,
        splashColor: Colors.red,
        child: const Text('+'),
      ),
    );
  }
}
