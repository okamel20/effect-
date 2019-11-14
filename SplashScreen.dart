import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=>  null,
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 0.5, 0.7, 0.9],
                  colors: [
                    Colors.grey[100],
                    Colors.grey[200],
                    Colors.grey[300],
                    Colors.grey[400],
                  ],
                ),
                
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Hero(child: Image.asset('assets/15.png',fit: BoxFit.cover,height: double.infinity,),tag: 'splash',),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('effect.',style: TextStyle(color: Colors.black,fontSize: 100,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('E-commerce application',style: TextStyle(color: Colors.black,fontSize: 20),),
                      ],
                    ),
                  ),

                  

                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            elevation: 1,
                            padding: EdgeInsets.only(top: 15,bottom: 15,right: 50,left: 50),
                            child: Hero(tag:'signup',child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 20),)),
                            color: Theme.of(context).primaryColor,
                            onPressed: (){
                              Navigator.pushReplacementNamed(context, 'signup');
                            },
                            shape: RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(5.0),
                            ),
                            
                          ),
                          RaisedButton(
                            elevation: 0.5,
                            padding: EdgeInsets.only(top: 15,bottom: 15,right: 60,left: 60),
                            child: Hero(tag:'login',child:Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),)),
                            color: Theme.of(context).accentColor,
                            onPressed: (){
                              Navigator.pushReplacementNamed(context, 'login');
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                ],
              ),
              
            ),
          ),
        ],
      ),
    );

    
  }
}

