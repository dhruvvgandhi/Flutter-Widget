import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FSBStatus drawerStatus;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Foldable SideBar'),),
        body: FoldableSidebarBuilder(
          drawer: CustomDrawer(closeDrawer: (){
            setState(() {
              drawerStatus = FSBStatus.FSB_CLOSE;
            });
          },),
          screenContents: FirstScreen(),
          status: drawerStatus,
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.deepOrange,
            child: Icon(Icons.menu,color: Colors.white,),
            onPressed: () {
              setState(() {
                drawerStatus = drawerStatus == FSBStatus.FSB_OPEN ? FSBStatus.FSB_CLOSE : FSBStatus.FSB_OPEN;
              });
            }),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withAlpha(200),
      child: Center(child: Text("Click on FAB to Open Drawer",style: TextStyle(fontSize: 20,color: Colors.white),),),
    );
  }
}


class CustomDrawer extends StatelessWidget {

  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.white,
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey.withAlpha(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlutterLogo(size: 50.0,colors: Colors.orange
                    ,),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Indian Innovation")
                ],
              )),
          ListTile(
            onTap: (){
              debugPrint("Tapped Profile");
            },
            leading: Icon(Icons.person),
            title: Text(
              "Your Profile",
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped settings");
            },
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Payments");
            },
            leading: Icon(Icons.payment),
            title: Text("Payments"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}