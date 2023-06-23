import 'package:flutter/material.dart';

import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage('assets/login.png'),
          fit:BoxFit.fill,
        ),
      ),
      child:Scaffold(
        backgroundColor: Colors.transparent,
        body:Stack(
          children: [
            Container(
              padding:EdgeInsets.only(left:100,top: 150),
              child:Text('Welcome\nBack',style:TextStyle(
                color:Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*0.5,right:50,left:50),
                child:Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: 'Enter Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),

                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign In',

                          style:TextStyle(
                            color:Color(0xff4c505b),
                          fontSize:27,
                          fontWeight:FontWeight.w800,
                        ),),
                        CircleAvatar(
                          radius: 27,
                          backgroundColor: Color(0xff4c505b),
                          child:IconButton(
                            color:Colors.white,
                            onPressed: (){},
                            icon:Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context)=>RegisterPage()),
                          );

                        },child:Text('Sign Up',style:TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color:Color(0xff4c505b),
                        ),
                        ),),
                        TextButton(onPressed: (){}, child:Text('Forgot Password?',style:TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color:Color(0xff4c505b),
                        ),
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }



}

