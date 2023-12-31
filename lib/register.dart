import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class RegisterPage extends StatefulWidget{
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image:AssetImage('assets/register.png'),
        fit: BoxFit.fill,
      ),
    ),
    child:Scaffold(
        backgroundColor: Colors.transparent,
        appBar:AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body:Stack(
          children: [
            Container(
              padding:EdgeInsets.only(left:35,top: 30),
              child:Text('Creating Account is\nfast and easy!',
                style:TextStyle(
                color:Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*0.28,),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                     margin:EdgeInsets.only(left:35,right:35),
                     child:Column(
                       children: [
                         TextField(
                           style: TextStyle(color:Colors.white),
                           decoration: InputDecoration(

                             enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(20),
                               borderSide:BorderSide(
                                 color:Colors.black,
                               ),
                             ),
                             hintText: "Full Name(as per college ID)",
                             hintStyle: TextStyle(color:Colors.white),
                             border:OutlineInputBorder(
                               borderRadius: BorderRadius.circular(20),
                             )
                           ),

                         ),
                         SizedBox(
                           height:30,
                         ),
                         TextField(
                           style: TextStyle(color:Colors.white),
                           decoration: InputDecoration(

                               enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(20),
                                 borderSide:BorderSide(
                                   color:Colors.black,
                                 ),
                               ),
                               hintText: "Email",
                               hintStyle: TextStyle(color:Colors.white),
                               border:OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(20),
                               )
                           ),

                         ),
                         SizedBox(
                           height:30,
                         ),
                         TextField(
                           style: TextStyle(color:Colors.white),
                           decoration: InputDecoration(

                               enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(20),
                                 borderSide:BorderSide(
                                   color:Colors.black,
                                 ),
                               ),
                               hintText: "Phone Number",
                               hintStyle: TextStyle(color:Colors.white),
                               border:OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(20),
                               )
                           ),

                         ),
                         SizedBox(
                           height:30,
                         ),
                         TextField(
                           style: TextStyle(color:Colors.white),
                           obscureText: true,
                           obscuringCharacter: '*',
                           decoration: InputDecoration(

                               enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(20),
                                 borderSide:BorderSide(
                                   color:Colors.black,
                                 ),
                               ),
                               hintText: "Set Password",
                               hintStyle: TextStyle(color:Colors.white),
                               border:OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(20),
                               )
                           ),

                         ),
                         SizedBox(
                           height:30,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               'Sign Up',
                               style:TextStyle(
                                 color:Colors.white,
                                 fontSize: 27,
                                 fontWeight: FontWeight.w800,
                               )
                             ),
                             CircleAvatar(



                               radius: 30,
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
                                 MaterialPageRoute(builder:(context)=>LoginPage()),
                               );
                             },
                                 child: Text(
                                   'Sign In',
                                   textAlign: TextAlign.left,
                                   style:TextStyle(
                                     decoration:TextDecoration.underline,
                                     color:Colors.black,
                                     fontSize: 18
                                   ),
                                 ),
                               style:ButtonStyle(),
                             ),
                           ],
                         )
                       ],
                     ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
    ),
    );
  }
}