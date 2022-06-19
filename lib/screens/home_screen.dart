import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_border_pay/screens/wallet_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: null,
        //actions: [
        //IconButton(icon: const Icon(Icons.arrow_forward_ios),
        //onPressed: (){
        // Navigator.pop(context);// add function to next page
        // }
        //),
        // ],
        title: Text('Border Pay App', style: TextStyle(fontSize: 25, color: Colors.white
        ),
        ),
        backgroundColor: Colors.black,
      ),
      body:
      Padding(padding: EdgeInsets.symmetric(horizontal: 24.0, ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            // Row(
            //   children: <Widget>[
            //     Container(
            //       child: Text("Border Pay", textAlign: TextAlign.left,
            //       style: TextStyle(fontSize: 20, color: Colors.white
            //       ),
            //       ),
            //       // child: Image.asset('images/borderPay.png'),
            //       // height: 20.0,
            //       // alignment: Alignment.topRight,
            //     ),
            //     Expanded(child: Container()),
            //
            //   ],
            // ),

            Row(
              children: <Widget>[

                Container(
                  child: Image.asset('images/bits.png'
                  ),
                  height: 350, width: 320,
                  // child: Lottie.network('https://assets5.lottiefiles.com/packages/lf20_5xsorurk.json', height: 460, width: 330,),
                  // height: 260.0,

                ),

              ],
            ),
            Text("Fund Wallet", textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20, color: Colors.white,
              ),
            ),
            Text("Go Beyond", textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 25, color: Colors.white,
              ),
            ),
            // SizedBox(
            //   height: 48.0,
            // ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, WalletScreen.id);//Go to registration screen.
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Start Your Transaction',
                  ),
                ),
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Container(
                  // color: Colors.white,
                  child: Image.asset('images/apple.png',
                  ),
                  height: 40, width: 40,
                  // child: Lottie.network('https://assets5.lottiefiles.com/packages/lf20_5xsorurk.json', height: 460, width: 330,),
                  // height: 260.0,

                ),
                Container(
                  // color: Colors.white,
                  child: Image.asset('images/google.png'
                  ),
                  height: 40, width: 40,
                  // child: Lottie.network('https://assets5.lottiefiles.com/packages/lf20_5xsorurk.json', height: 460, width: 330,),
                  // height: 260.0,

                ),

              ],
            )

          ],
        ),
      ),
    );
  }
}
