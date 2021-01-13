import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_snake/core/app_settings.dart';
import 'package:flutter_snake/pages/menu_page.dart';
import 'package:provider/provider.dart';

// class SplashScreen extends StatefulWidget {
//   SplashScreen({Key key}) : super(key: key);
//
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   Widget build(BuildContext context) {
//     Future<String> _settings = context.watch<AppSettings>().initIsDone;
//     return Scaffold(
//       body: Container(
//         child: Expanded(
//           child: FutureBuilder(
//             future: _settings,
//             builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
//               if (snapshot.hasData) {
//                 print(snapshot.data);
//                 WidgetsBinding.instance.addPostFrameCallback((_) {
//                   Navigator.of(context).pushReplacement(
//                       MaterialPageRoute(builder: (context) => MenuPage()));
//                 });
//                 return Container();
//               } else if (snapshot.hasError) {
//                 return Text(
//                   'hello from init error!',
//                   style: TextStyle(),
//                 );
//               } else {
//                 return Column(
//                   children: [
//                     CircularProgressIndicator(),
//                   ],
//                 );
//                 // return Text('hello from else');
//               }
//             },
//           ),
//         ),
//       ),
//       backgroundColor: Colors.black,
//     );
//   }
// }

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    final initStatus = context.read<AppSettings>().init();
    initStatus.then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MenuPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Icon(
          Icons.ac_unit,
          color: Colors.blue,
          size: MediaQuery.of(context).size.width - 21,
        ));
  }
}
