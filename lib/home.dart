import 'package:e_commerce_app/reg.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text("TOKOTO",style: TextStyle(fontSize: 40,color: Color.fromRGBO(255, 127, 51, 1),fontWeight: FontWeight.bold),),
            const Text("Welcome to Tokoto, let's shop!",style: TextStyle(color: Colors.grey),),
            const SizedBox(
              height: 60,
            ),
            const Image(image: AssetImage("assets/images/splash_1.png"),width: 300,height: 300,),
            const SizedBox(
              height: 100,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              //mainAxisAlignment: MainAxisAlignment.end,
             // crossAxisAlignment: CrossAxisAlignment.stretch,
              child: MaterialButton(
                onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const Register()));
              },
                height: 50,
                minWidth: 300,
                textColor: Colors.white,
                color: Color.fromRGBO(255, 127, 51, 1),
                shape: const StadiumBorder(),
                child: const Text("Continue",style: TextStyle(fontSize: 20),),
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}
