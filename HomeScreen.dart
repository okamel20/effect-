import 'package:flutter/material.dart';
import 'SubCategory.dart';
import 'sideDrawer.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );
    
    animation = ColorTween(
      begin: Colors.transparent,
      end: Colors.red.withOpacity(0.9),
    ).animate(controller);

    controller.forward();
    
    controller.addListener((){
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        title: Text('Home'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search,size: 25),
          ),
        ],
        elevation: 0.4,
      ),
      drawer: SideDrawer(pagename : 'home'),
      body: ListView(
        children: <Widget>[
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> SubCategory(sale: false,title: 'Womens Fashion',)));
            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3.4,
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
                  Container(
                    padding: EdgeInsets.only(left: 50),
                    child: Center(
                      child: Hero(child: Image.asset('assets/12.png'),tag: 'splash',),
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50,left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Womens Fashion ',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 15,left: 15),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Spring Season Opened ',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> SubCategory(sale: false,title: 'Mens Fashion',)));
            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3.4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.1, 0.5, 0.7, 0.9],
                  colors: [
                    Colors.grey[300],
                    Colors.grey[200],
                    Colors.grey[300],
                    Colors.grey[400],
                  ],
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 50),
                    child: Center(
                      child: Image.asset('assets/13.png'),
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50,left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Mens Fashion ',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 15,left: 15),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Spring Season Opened ',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50,right: 15),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        minRadius: 40,
                        maxRadius: 40,
                        backgroundColor: Theme.of(context).accentColor,
                        child: Text('SALE!',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> SubCategory(sale: true,title: 'Kids Fashion',)));
            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3.4,
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
                  Container(
                    padding: EdgeInsets.only(left: 50),
                    child: Center(
                      child: Image.asset('assets/kids.png'),
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50,left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Kids Fashion ',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 15,left: 15),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Spring Season Opened ',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: animation.value,
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 50,left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text('Kids christmax',style: TextStyle(color: Colors.white.withOpacity(controller.value),fontSize: 30,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 55,left: 30),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('SALE!',style: TextStyle(color: Colors.white.withOpacity(controller.value),fontSize: 100,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10,right: 30),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text('For the smallest',style: TextStyle(color: Colors.white.withOpacity(controller.value),fontSize: 18,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
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
