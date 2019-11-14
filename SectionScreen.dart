import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class SectionScreen extends StatefulWidget {
  @override
  _SectionScreenState createState() => _SectionScreenState();
}

class _SectionScreenState extends State<SectionScreen> {
  @override
  Widget build(BuildContext context) {

    Widget corsol_image = Container(
      height: 290.0,
      child: new Carousel(
        images: [
          new ExactAssetImage("assets/images/slider1.jpg"),
          new ExactAssetImage("assets/images/slider2.jpg"),
          new ExactAssetImage("assets/images/slider1.jpg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 8.0,
        dotColor: Colors.white,
        indicatorBgPadding: 16.0,
        // showIndicator: false,
        dotBgColor: Colors.transparent,
      ),
      
      
    );
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        title: Text('Womens Fashion'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search,size: 25),
          ),

        ],
        elevation: 0.4,
      ),
      
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              corsol_image,
              Container(
                height: 290,
                width: double.infinity,
                color: Colors.grey.withOpacity(0.5),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('SPRING!',style: TextStyle(color: Colors.white,fontSize: 75,fontWeight: FontWeight.bold),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 155,left: 100),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: <Widget>[
                      Text('Spring Season ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                      Text('Opened',
                      style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).accentColor
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
              
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top:15,right: 10,left: 10,bottom: 10),
              child: Text('Discover our topsellers',
                style: TextStyle(
                  fontSize: 15,
                )
              ),
            ),
          ),
          Pro(image1: 'assets/pros1.png',image2: 'assets/pros2.png',),
          Pro(image1: 'assets/pros3.png',image2: 'assets/pros4.png',),
          Pro(image1: 'assets/pros1.png',image2: 'assets/pros2.png',),
          Pro(image1: 'assets/pros3.png',image2: 'assets/pros4.png',),
        ],
      ),
    );
  }
}

class Pro extends StatefulWidget {
  var image1;
  var image2;
  Pro({this.image1,this.image2});
  @override
  _ProState createState() => _ProState();
}

class _ProState extends State<Pro> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  InkWell(
                    onTap: (){
                        
                      },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.2,
                      height: 200,
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
                      child:Image.asset('${widget.image1}',fit: BoxFit.cover,),
                    ),
                  ),

                  Positioned(
                    left: 100,
                    top: 135,
                    child: CircleAvatar(
                        minRadius: 30,
                        maxRadius: 30,
                        backgroundColor: Theme.of(context).accentColor,
                        child: Text('SALE!',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text('Helena',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).primaryColor
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("\$120",
                      style: TextStyle(
                        fontSize: 15,
                        color:Colors.grey
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,left: 10),
                    child: Text("\$120",
                      style: TextStyle(
                        fontSize: 13,
                        color:Colors.grey,
                        decoration : TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ],
              ),
              
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        height: 200,
                        width: double.infinity,
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
                        child: Image.asset('${widget.image2}',fit: BoxFit.cover,),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text('Helena',
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).primaryColor
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("\$80",
                        style: TextStyle(
                          fontSize: 15,
                          color:Colors.grey
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}