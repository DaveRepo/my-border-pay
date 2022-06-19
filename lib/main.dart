import 'package:flutter/material.dart';
import 'package:my_border_pay/screens/home_screen.dart';
import 'package:my_border_pay/screens/wallet_screen.dart';
// import 'package:flutter/services.dart';



// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);
//
//   // await Firebase.initializeApp();
//   runApp(const BorderPay());
// }

void main() => runApp(BorderPay());

class BorderPay extends StatelessWidget {
  const BorderPay({Key? key}) : super(key: key);
  //final Future<FirebaseApp> _fbApp = Firebase.initializedApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Border Pay',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      initialRoute:  HomeScreen.id, // this will invoke the welcome the page and '/login', could do the magic too
      routes: {
        // LoginScreen.id: (context)=> LoginScreen(),
        // RegistrationScreen.id: (context)=> RegistrationScreen(),
        HomeScreen.id: (context)=> HomeScreen(),
        WalletScreen.id: (context)=> WalletScreen(),


      },
    );
  }
}
