// ---------------------------------------------
// Name: Miguel Quezada
// Date: 7/21/2022
// App: navigator_1_0_s1
// Description: Navigator 1.0	- Sample 1
// ---------------------------------------------
// B13 - Flutter for Beginners 2nd Edition
// Section 2: The Flutter User Interface – Everything Is a Widget
// Chapter 7 - Routing – Navigating between Screens
// Navigation 1.0 - Sample 1
// Navigator widget that has a basic flow that navigates to a second screen and back.
// Uses Navigator.of(context).push
// https://github.com/PacktPublishing/Flutter-for-Beginners-Second-Edition/blob/main/hello_world/lib/chapter_07/navigation.dart
// ---------------------------------------------

// ---------- import packages ----------
import 'package:flutter/material.dart';
// ---------- import packages ----------

// ---------- Function - main ----------
// Dart API
// Every app must have a top-level main() function, which serves as the entrypoint to the app.
// The main() function returns void and has an optional List<String> parameter for arguments.
void main() {
  runApp(const MyApp());
}
// ---------- Function - main ----------

// ********** Start - Class - MyApp **********
class MyApp extends StatelessWidget {
  // Use key in widget constructors.
  const MyApp({Key? key}) : super(key: key);

  // ---------- Method - build ----------
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ---------- material - MaterialApp ----------
    return MaterialApp(
      // ----- MaterialApp - property - title -----
      // A one-line description used by the device to identify the app for the user.
      title: 'Flutter Demo',
      // ----- MaterialApp - property - title -----
      // ----- MaterialApp - property - theme -----
      // Default visual properties, like colors fonts and shapes,
      // for this app's material widgets.
      // Create a ThemeData that's used to configure a Theme.
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // ----- Theme - parameter - primarySwatch -----
        // Using Flutters Primary Swatch with a custom MaterialColor
        // https://medium.com/@morgenroth/using-flutters-primary-swatch-with-a-custom-materialcolor-c5e0f18b95b0
        primarySwatch: Colors.blue,
        // ----- Theme - parameter - primarySwatch -----
      ),
      // ----- MaterialApp - property - home -----
      // The widget for the default route of the app (Navigator.defaultRouteName, which is /).
      // Set the class called MyHomePage as the default screen
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // ----- MaterialApp - property - home -----
    );
    // ---------- material - MaterialApp ----------
  }
// ---------- Method - build ----------

}
// ********** End - Class - MyApp **********

// ********** Start - Class - MyHomePage **********
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  // ---------- Function - createState ----------
  @override
  State<MyHomePage> createState() => _MyHomePageState();
// ---------- Function - createState ----------

}
// ********** End - Class - MyHomePage **********

// ********** Start - Class - _MyHomePageState **********
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // ---------- Function - _incrementCounter ----------
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  // ---------- Function - _incrementCounter ----------

  // ---------- Method - build ----------
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // ---------- material - Scaffold ----------
    return Scaffold(
      // ~~~~~ Scaffold - property - appBar ~~~~~
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      // ~~~~~ Scaffold - property - appBar ~~~~~
      // ~~~~~ Scaffold - property - body ~~~~~
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        // ----- widget - Column -----
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          // ----- Flex - property - mainAxisAlignment -----
          // How the children should be placed along the main axis.
          mainAxisAlignment: MainAxisAlignment.center,
          // ----- Flex - property - mainAxisAlignment -----
          // ----- Column - property - children -----
          // The widgets below this widget in the tree.
          children: <Widget>[

            // ----- widget - Text -----
            const Text(
              'You have pushed the button this many times:',
            ),
            // ----- widget - Text -----
            // ----- widget - Text -----
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            // ----- widget - Text -----
            // ----- material - ElevatedButton -----
            // A Material Design "elevated button".
            ElevatedButton(
              // ----- ElevatedButton - property - child -----
              // Typically the button's label.
              child: const Text('Press this'),
              // ----- ElevatedButton - property - child -----
              // ----- ElevatedButton - property - onPressed -----
              // Called when the button is tapped or otherwise activated.
              onPressed: () {
                // ----- Navigator - Static Method - of -----
                // The state from the closest instance of this class that encloses the given context.
                // ----- Navigator - Static Method - push -----
                // Push the given route onto the navigator that most tightly encloses the given context.
                Navigator.of(context).push(
                  // ----- material - MaterialPageRoute -----
                  // A modal route that replaces the entire screen with a platform-adaptive transition.
                  MaterialPageRoute(builder: (context) {
                    // navigate to a screen that is build in the class AnotherScreen
                    // pass in the string title property value of Go back
                    // return AnotherScreen(title: "Go back");
                    return const AnotherScreen(title: "Go back");
                  }
                  ),
                  // ----- material - MaterialPageRoute -----
                );
                // ----- Navigator - Static Method - push -----
                // ----- Navigator - Static Method - of -----
              },
              // ----- ElevatedButton - property - onPressed -----
            ),
            // ----- material - ElevatedButton -----

          ],
          // ----- Column - property - children -----
        ),
        // ----- widget - Column -----
      ),
      // ~~~~~ Scaffold - property - body ~~~~~
      // ----- material - FloatingActionButton -----
      // A material design floating action button.
      floatingActionButton: FloatingActionButton(
        // ----- FloatingActionButton - property - onPressed -----
        // The callback that is called when the button is tapped or otherwise activated.
        // If this is set to null, the button will be disabled.
        onPressed: _incrementCounter,
        // ----- FloatingActionButton - property - onPressed -----
        // ----- FloatingActionButton - property - tooltip -----
        // Text that describes the action that will occur when the button is pressed.
        tooltip: 'Increment',
        // ----- FloatingActionButton - property - tooltip -----
        // ----- FloatingActionButton - property - child -----
        // The widget below this widget in the tree.
        // in this case, show and add icon as a child inside the button
        child: const Icon(Icons.add),
        // ----- FloatingActionButton - property - child -----
      ), // This trailing comma makes auto-formatting nicer for build methods.
      // ----- material - FloatingActionButton -----
    );
    // ---------- material - Scaffold ----------
  }
// ---------- Method - build ----------
}
// ********** End - Class - _MyHomePageState **********

// ********** Start - Class - AnotherScreen **********
class AnotherScreen extends StatelessWidget {
  // Use key in widget constructors
  //AnotherScreen({Key? key}) : super(key: key);

  // Use key in widget constructors
  // AnotherScreen({required this.title});
  // When this class is called from the _MyHomePageState class the a string
  // is passed to the title property with the value "Go back"
  const AnotherScreen({required this.title, Key? key}) : super(key: key);
  final String title;

  // ---------- Method - build ----------
  @override
  Widget build(BuildContext context) {
    // ---------- material - Scaffold ----------
    return Scaffold(
      // ~~~~~ Scaffold - property - body ~~~~~
      body: Center(
        // ----- material - ElevatedButton -----
        child: ElevatedButton(
          // ----- ElevatedButton - property - child -----
          // Typically the button's label.
          // The title property holds the value "Go back"
          child: Text(title),
          // ----- ElevatedButton - property - child -----
          // ----- ElevatedButton - property - onPressed -----
          // Called when the button is tapped or otherwise activated.
          onPressed: () {
            // ----- Navigator - Static Method - of -----
            // The state from the closest instance of this class that encloses the given context.
            // ----- Navigator - Static Method - pop -----
            // Pop the top-most route off the navigator that most tightly encloses the given context.
            // ----- Most mobile apps display screens on top of each other, like a stack -----
            // The Detail Screen is popped of from top of the Home Screen, leaving only Home Screen
            // return to the previous screen
            // Go From the Detail Screen back to the Home Screen
            // -------------------------------------------------------------------------------
            Navigator.of(context).pop();
            // ----- Navigator - Static Method - pop -----
            // ----- Navigator - Static Method - of -----
          },
          // ----- ElevatedButton - property - onPressed -----
        ),
        // ----- material - ElevatedButton -----
      ),
      // ~~~~~ Scaffold - property - body ~~~~~
    );
    // ---------- material - Scaffold ----------
  }
// ---------- Method - build ----------

}
// ********** End - Class - AnotherScreen **********

// ---------- generated by Android Studio ----------
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
// ---------- generated by Android Studio ----------