import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        elevation: 0,
       backgroundColor: Colors.white70,
      ),
      body:  Column(
        children: [
           const Text("Register Account",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
           const Text("Complete your details or continue \n with social media",style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
           const SizedBox(
            height: 70,
          ),
           Container(
             margin: const EdgeInsets.fromLTRB(25,0,25,0),
            child: const Column( children:[
           TextField(
            style: TextStyle(fontSize: 14),
            decoration: //Box
            InputDecoration(
                suffixIcon: Icon(Icons.email_outlined),
                fillColor: Colors.white,
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Text("Email"),
                hintText: "Enter your email",
                hintStyle:
                TextStyle(fontSize: 16, color: Colors.grey),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(60))),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
            ),
          ),
           SizedBox(
            height: 20,
          ),

           TextField(
            //strutStyle: StrutStyle(),
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.lock),
                fillColor: Colors.white,
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "password",
                labelStyle: TextStyle(color: Colors.grey),
                hintText: "Enter your password",
                hintStyle:
                TextStyle(fontSize: 16, color: Colors.grey),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(60))),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
            ),
          ),
           SizedBox(
            height: 20,
          ),
           TextField(
            //style: TextStyle(fontSize: 14),
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.lock),
                fillColor: Colors.white,
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "confirm password",
                hintText: "Re-enter your password",
                hintStyle:
                TextStyle(fontSize: 16, color: Colors.grey),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(60))),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
            ),
          ),],),
          ),

          const SizedBox(
            height: 50,
          ),
          MaterialButton(
            onPressed: () {
              //Navigator.push(context,MaterialPageRoute(builder: (context)=>const Register()));
            },
            height: 50,
            minWidth: 370,
            textColor: Colors.white,
            color: const Color.fromRGBO(255, 127, 51, 1),
            shape: const StadiumBorder(),
            child: const Text("Continue",style: TextStyle(fontSize: 20),),
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/google-icon.svg")),
              const SizedBox(width: 2,),
              IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/facebook-2.svg")),
              const SizedBox(width: 2,),
              IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/twitter.svg"),color: Colors.grey,),
            ],
          ),
          const Text("By continue your confirm that you agree",style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
