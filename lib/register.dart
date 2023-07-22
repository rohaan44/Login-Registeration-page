import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:const BoxDecoration(
          gradient: LinearGradient(colors: [
             Color.fromARGB(255, 229, 83, 5),
               Color.fromARGB(255, 242, 109, 0),
               Color.fromARGB(255, 255, 168, 38)
          ]),
        ),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.all(20),child: Text("Register",
          style: TextStyle(color: Colors.white,fontSize: 40),),),
        Expanded(
          child: Container(decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))),
          child: Column(
            children: [
              Container(alignment: Alignment.center, 
              child: Icon(Icons.android,size: 150,color:Color.fromRGBO(225,95,27,3),),),
              Padding(padding: EdgeInsets.all(20)
              ,child:Column(
                children: [
                  Container(
                     height: 50,
            padding:const EdgeInsets.all(20),
            decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    blurRadius: 20,
                    offset: Offset(0, 10),
                    color: Color.fromRGBO(225,95,27,3),)]
                  ),
                  
                  child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(fontSize: 15,color:Color.fromARGB(149, 0, 0, 0)
                    ),
                    border: InputBorder.none
                    ),
                  ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                       boxShadow: const [BoxShadow(
                        blurRadius: 20,
                        offset: Offset(0, 10),
                        color: Color.fromRGBO(225,95,27,3)
                      )]
                    ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                      hintStyle: TextStyle(fontSize: 15,color: Color.fromARGB(150, 0, 0, 0),
                      ),
                    ),
                  ),
                  ),

                SizedBox(height: 20,),
                  Container(
                    height: 50,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                       boxShadow: const [BoxShadow(
                        blurRadius: 20,
                        offset: Offset(0, 10),
                        color: Color.fromRGBO(225,95,27,3)
                      )]
                    ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Phone Number",
                      hintStyle: TextStyle(fontSize: 15,color: Color.fromARGB(150, 0, 0, 0),
                      ),
                    ),
                  ),
                  ),

                SizedBox(height: 20,),
                  Container(
                    height: 50,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                       boxShadow: const [BoxShadow(
                        blurRadius: 20,
                        offset: Offset(0, 10),
                        color: Color.fromRGBO(225,95,27,3)
                      )]
                    ),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 15,color: Color.fromARGB(150, 0, 0, 0),
                      ),
                    ),
                  ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                       boxShadow: const [BoxShadow(
                        blurRadius: 20,
                        offset: Offset(0, 10),
                        color: Color.fromRGBO(225,95,27,3)
                      )]
                    ),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(fontSize: 15,color: Color.fromARGB(150, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:50 ,),
                Container(
                  height: 50,
                  width: 500,
                  child: ElevatedButton(onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(225,95,27,3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21),
                    )
                  ),
                  child: Text("Sign In",style: TextStyle(fontSize: 20,color: Colors.white),)),
                )
                ],
              ) ,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text("Are you a member?",style: TextStyle(fontSize: 15),),
          TextButton(onPressed: (){
             Navigator.pop(context);
          }, child: Text("Sign Up",
          style:TextStyle(color: Color.fromRGBO(225,95,27,3), fontSize: 15),))
                ],
              )
            ],
           ),
          )
        )
      ],
     ),  
    ),
   );
  }
}