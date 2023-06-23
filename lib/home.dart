import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/login.dart';
import 'package:my_app/register.dart';

class HomePage extends StatefulWidget{

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
  }


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage('assets/register.png'),
          fit:BoxFit.fill,
        ),
      ),
      child:Scaffold(
        backgroundColor:Colors.transparent,
        body:Stack(
          children: [
            Container(
              padding:EdgeInsets.only(left:200,top: 50),
              child:Text('One step towards\nDigitalisation...',style:TextStyle(
                color:Colors.white,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*0.4,left:525),
                child:Column(
                  children: [
                    ElevatedButton(onPressed:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=>LoginPage()),
                      );
                    }, child: Text('Sign In',style:TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                    )),),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=>RegisterPage()),
                      );
                    }, child:Text('Create Account',style:TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                    )),),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('1)Get all your official Digital Documents at your fingertip.',style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color:Colors.grey.shade800,
                            ),),
                            SizedBox(
                              height: 20,
                            ),
                            Text('2)All your VJTI Documents at one place.',style: TextStyle(
                             fontSize: 30,
                             fontWeight: FontWeight.bold,
                              color:Colors.grey.shade800,
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),



          ],
        )

      ),
    );
  }
}