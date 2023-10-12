// // // import 'package:flutter/material.dart';
// // // import 'package:fluttertoast/fluttertoast.dart';

// // // void main() {
// // //   runApp(const MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   const MyApp({Key? key}) : super(key: key);
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       title: 'Flutter Demo',
// // //       theme: ThemeData(
// // //         colorScheme: ColorScheme.fromSwatch(
// // //           primarySwatch: Colors.deepPurple,
// // //           brightness: Brightness.light,
// // //         ),
// // //       ),
// // //       home: testnotifikasi(),
// // //     );
// // //   }
// // // }

// // // class testnotifikasi extends StatefulWidget {
// // //   const testnotifikasi({super.key});
// // //   @override
// // //   State<testnotifikasi> createState() => _testnotifikasiState();
// // // }

// // // class _testnotifikasiState extends State<testnotifikasi> {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text("Toast"),
// // //       ),
// // //       body: Column(
// // //         mainAxisAlignment: MainAxisAlignment.center,
// // //         children: [
// // //           ElevatedButton(
// // //             onPressed: () {
// // // // Langkah 3
// // //               Fluttertoast.showToast(
// // //                 msg: "THE toast message",
// // //                 toastLength: Toast.LENGTH_SHORT,
// // //                 timeInSecForIosWeb: 1,
// // //                 backgroundColor: Colors.black,
// // //                 textColor: Colors.white,
// // //                 fontSize: 16.0,
// // //               );
// // //             },
// // //             child: const Text(
// // //               'Show Toast Message',
// // //               style: TextStyle(fontSize: 24),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';

// // void main() => runApp(const SnackBarDemo());

// // class SnackBarDemo extends StatelessWidget {
// //   const SnackBarDemo({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'SnackBar Demo',
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: const Text('SnackBar Demo'),
// //         ),
// //         body: const SnackBarPage(),
// //       ),
// //     );
// //   }
// // }

// // class SnackBarPage extends StatelessWidget {
// //   const SnackBarPage({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return Center(
// //       child: ElevatedButton(
// //         onPressed: () {
// //           final snackBar = SnackBar(
// //             content: const Text('Yay! A SnackBar!'),
// //             action: SnackBarAction(
// //               label: 'Undo',
// //               onPressed: () {},
// //             ),
// //           );
// //           ScaffoldMessenger.of(context).showSnackBar(snackBar);
// //         },
// //         child: const Text('Show SnackBar'),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("Tutorial Membuat Alert")),
//         body: LoginPage(),
//       ),
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//               controller: _emailController,
//               maxLines: 1,
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 labelText: "Email",
//                 hintText: "Masukkan Email",
//                 prefixIcon: Icon(Icons.mail),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             TextFormField(
//               controller: _passwordController,
//               maxLines: 1,
//               obscureText: true,
//               keyboardType: TextInputType.visiblePassword,
//               decoration: InputDecoration(
//                 labelText: "Password",
//                 hintText: "Masukkan Password",
//                 prefixIcon: Icon(Icons.lock),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             SizedBox(height: 25),
//             ElevatedButton(
//               onPressed: () => submit(
//                 context,
//                 _emailController.text,
//                 _passwordController.text,
//               ),
//               child: Text("Login"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void submit(BuildContext context, String email, String password) {
//     if (email.isEmpty || password.isEmpty) {
//       final snackBar = SnackBar(
//         duration: const Duration(seconds: 5),
//         content: Text("Email dan password harus diisi"),
//         backgroundColor: Colors.red,
//       );
//       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//       return;
//     }
//     AlertDialog alert = AlertDialog(
//       title: Text("Login Berhasil"),
//       content: Container(
//         child: Text("Selamat Anda Berhasil login"),
//       ),
//       actions: [
//         TextButton(
//           child: Text('Ok'),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ],
//     );
//     showDialog(context: context, builder: (context) => alert);
//     return;
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});
  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
// Create a text controller and use it to retrieve the current value
// of the TextField.
  final myController = TextEditingController();
  @override
  void dispose() {
// Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
// When the user presses the button, show an alert dialog containing
// the text that the user has entered into the text field.
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
// Retrieve the text the that user has entered by using the
// TextEditingController.
                content: Text(myController.text),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
