import 'package:encrypt_decrypt_app/core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginView(),
    );
  }
}

// import 'package:encrypt_decrypt_app/firebase_options.dart';
// import 'package:encrypt_decrypt_app/screens/auth_screen.dart';
// import 'package:encrypt_decrypt_app/screens/decryptionScreen.dart';
// import 'package:encrypt_decrypt_app/screens/encryptionscreen.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );

//   runApp(MaterialApp(
//     title: "EDWarden",
//     debugShowCheckedModeBanner: false,
//     home: BottomNavBar(),
//     theme: ThemeData(
//       brightness: Brightness.dark,
//       backgroundColor: const Color(0xffee122a),
//       primaryColor: const Color(0xffee122a),
//     ),
//     routes: {
//       '/home': (context) => const EncryptionPage(),
//       '/decrypt': (context) => const decryptionPage(),
//       '/login': (context) => Login(),
//     },
//   ));
// }

// // ignore: use_key_in_widget_constructors
// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   var screens = [const EncryptionPage(), const decryptionPage(), Login()];

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       child: CupertinoTabScaffold(
//         resizeToAvoidBottomInset: false,
//         tabBar: CupertinoTabBar(
//           activeColor: const Color(0xffee122a),
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               label: "Encryption",
//               icon: Icon(CupertinoIcons.lock_fill),
//             ),
//             BottomNavigationBarItem(
//               label: "Decryption",
//               icon: Icon(CupertinoIcons.lock_open_fill),
//             ),
//             BottomNavigationBarItem(
//               label: "Login",
//               icon: Icon(CupertinoIcons.person_alt_circle),
//             ),
//           ],
//         ),
//         tabBuilder: (BuildContext context, int index) {
//           //return screens[index];

//           switch (index) {
//             case 0:
//               return CupertinoTabView(builder: (context) {
//                 return const CupertinoPageScaffold(
//                     resizeToAvoidBottomInset: false, child: EncryptionPage());
//               });
//             case 1:
//               return CupertinoTabView(builder: (context) {
//                 return const CupertinoPageScaffold(
//                     resizeToAvoidBottomInset: false, child: decryptionPage());
//               });
//             case 2:
//               return CupertinoTabView(builder: (context) {
//                 return CupertinoPageScaffold(
//                     resizeToAvoidBottomInset: false, child: AuthScreen());
//               });
//             default:
//               return CupertinoTabView(builder: (context) {
//                 return const CupertinoPageScaffold(
//                     resizeToAvoidBottomInset: false, child: EncryptionPage());
//               });
//           }
//         },
//       ),
//     );
//   }
// }
