import 'package:flutter/material.dart';


class SideDrawer extends StatefulWidget {
  String pagename = 'home';
  SideDrawer({this.pagename});
  @override
  _SideDrawerState createState() => _SideDrawerState(pagename : this.pagename);
}

class _SideDrawerState extends State<SideDrawer> {
  String pagename = 'home';
  _SideDrawerState({this.pagename});
  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset('assets/menu/menu.jpg',fit: BoxFit.fitHeight,),
                ),
                Container(
                  color: Theme.of(context).primaryColor.withOpacity(0.9),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Menu',style: TextStyle(fontSize: 25,color: Colors.white),),
                        InkWell(
                          child: Icon(Icons.close,size: 25,color: Colors.white,),
                          onTap: (){
                            Navigator.pop(context, true);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left:10 ,top: 150),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              onTap: () => Navigator.pushNamed(context, 'home'),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(Icons.home,size: 40,color: Colors.white,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text('Menu',style: TextStyle(fontSize: 25,color: Colors.white),),
                                  ),
                                ],
                              ),
                            ),
                            
                            widget.pagename == 'home' ?
                            Container(
                              color: Theme.of(context).accentColor,
                              width: 3,
                              height: 40,
                            ):Container(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              onTap: () => Navigator.pushNamed(context, 'home'),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(Icons.search,size: 40,color: Colors.white,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text('Search',style: TextStyle(fontSize: 25,color: Colors.white),),
                                  ),
                                ],
                              ),
                            ),
                            widget.pagename == 'search' ?
                            Container(
                              color: Theme.of(context).accentColor,
                              width: 3,
                              height: 40,
                            ):Container(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              onTap: () => Navigator.pushNamed(context, 'home'),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(Icons.category,size: 40,color: Colors.white,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text('Categories',style: TextStyle(fontSize: 25,color: Colors.white),),
                                  ),
                                ],
                              ),
                            ),
                            widget.pagename == 'category' ?
                            Container(
                              color: Theme.of(context).accentColor,
                              width: 3,
                              height: 40,
                            ):Container(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              onTap: () => Navigator.pushNamed(context, 'basket'),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(Icons.shopping_basket,size: 40,color: Colors.white,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text('Basket',style: TextStyle(fontSize: 25,color: Colors.white),),
                                  ),
                                ],
                              ),
                            ),
                            widget.pagename == 'basket' ?
                            Container(
                              color: Theme.of(context).accentColor,
                              width: 3,
                              height: 40,
                            ):Container(),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 80,left: 20,right: 20),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              maxRadius: 40,
                              minRadius: 40,
                              backgroundImage: AssetImage('assets/user.png'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('Account',style: TextStyle(color: Colors.white,fontSize: 25),),
                            ),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
