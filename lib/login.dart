import 'package:flutter/material.dart';
import 'package:login/register.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 229, 83, 5),
               Color.fromARGB(255, 242, 109, 0),
               Color.fromARGB(255, 255, 168, 38)
            ]
          )
        ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: 
        [
          const SizedBox(height: 40,),
          const Padding(padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Icon(Icons.android,size: 200,color: Colors.white,),
           
          ],
          ),
        ),
        Expanded(
          child:Container(
            decoration:const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(60),
            topRight: Radius.circular(60))
          ),
          child: Padding(padding: EdgeInsets.all(20),
        child:Column(
          children: [
            SizedBox(height: 80,)
,            Container(
            height: 70,
            padding:const EdgeInsets.all(20),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.white,
              boxShadow: [BoxShadow(
                blurRadius: 20,
                offset: Offset(0, 10),
                color: Color.fromRGBO(225,95,27,3),)],

            ),
            //email
            child:const TextField(
              cursorColor: Color.fromRGBO(225,95,27,3),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email or Phone Number",
                    hintStyle: TextStyle(fontSize: 15,color: Color.fromARGB(150, 0, 0, 0)
                  ),
                ),
          )
          ),
          SizedBox(height: 50,),
          Container(
            height: 70,
            padding:const EdgeInsets.all(20),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.white,
              boxShadow: [BoxShadow(
                blurRadius: 20,
                offset: Offset(0, 10),
                color: Color.fromRGBO(225,95,27,3),)]),
                
                //Password
                child:const TextField(
                  cursorColor: Color.fromRGBO(225,95,27,3),
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 15,color: Color.fromARGB(150, 0, 0, 0)
                  ),
                ),
        )          
        ),
          //Login button
          SizedBox(height: 50,),
          Container(
            width: 400,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(21)
                ),
                backgroundColor: Color.fromRGBO(225,95,27,3),
                              ),
            onPressed: (){}, child: const Text("Login",
            style: TextStyle(color: Colors.white,fontSize: 30),)),
          ),
           //Button
        TextButton(onPressed: (){}, child: const Text("Forgot Password..?",
        style:TextStyle(color: Color.fromRGBO(225,95,27,3), fontSize: 18))),
        //Button
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text("Are you not a member?",style: TextStyle(fontSize: 15),),
          TextButton(onPressed: (){
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Register()),
  );
          }, child: Text("Sign In",
          style:TextStyle(color: Color.fromRGBO(225,95,27,3), fontSize: 15),))
          ],
        ),
        ],
        ),
      ),
    ), 
  ),
        


        ],
      ),
    );
  }
}