
import 'package:flutter/material.dart';

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);


  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  bool _hasBeenPressed = false;
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Fill this out in the next step.
return Scaffold(
  appBar: AppBar(
    title: Text('coding'),
  ),
body: Center(
  child: Container(
    padding: const EdgeInsets.all(16.0),
    // child: TextField(
    //   controller: myController,
    // ),
child: Column(
  children: [
    Container(
      child:TextField(
        controller: myController,
        // obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'text',
        ),
      ),
    ),
    Container(
      child:   ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red, // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context){

              return AlertDialog(
            content: Text(
                 "$myController"),
        ); },);
          },
        child: Text('Enter'),
      ),
    ),

    Container(

      padding: EdgeInsets.all(40.0),
      margin: EdgeInsets.all(40.0),

       child: ElevatedButton(
         onPressed: () {
    setState(() {
    _hasBeenPressed = !_hasBeenPressed;
    },);
    },
         child: Text('change color'),
         style: ElevatedButton.styleFrom(
         primary:    _hasBeenPressed ? Colors.cyanAccent : Colors.red,
           shape: CircleBorder(),
            padding: EdgeInsets.all(40),


    )
       )
    )
  ],
),


  ),


),
);
  }
}


// void main() => runApp(const inputtext());
//
// class inputtext extends StatelessWidget {
//   const inputtext({Key? key}) : super(key: key);
//
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   late TextEditingController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = TextEditingController();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: TextField(
//           controller: _controller,
//           onSubmitted: (String value) async {
//
//
//             // await showDialog<void>(
//             //   context: context,
//             //   builder: (BuildContext context) {
//             //     return AlertDialog(
//             //       // title: const Text('Thanks!'),
//             //       content: Text(
//             //           'You typed "$value", which has length ${value.characters.length}.'),
//             //       actions: <Widget>[
//             //         RaisedButton(
//             //
//             //           },
//             //           // child: const Text('enter'),
//             //         ),
//             //       ],
//             //     );
//               },
//             ),
//
//       ),
//     );
//   }
// }
