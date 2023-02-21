import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_demoproject/common.dart';
import 'package:flutter_demoproject/leave.dart';
import 'package:flutter_demoproject/serivices/db_helper.dart';
import 'main.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key, required String title});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}
class _MyDashboardState extends State<MyDashboard> {
  @override
Widget build(BuildContext context) {  
    return  WillPopScope(
      onWillPop: () {return showLoAlert(context) ;},
      child: Scaffold(  
        appBar: AppBar( backgroundColor: Colors.purple, 
          title: Text("Dashboard"), 
          centerTitle: true,
          actions: <Widget>[
            IconButton(onPressed: (){showLoAlert(context);
             }, icon: Icon(Icons.logout),)
          ], 
          
           
        ),  
       body: Center(child:Column(children: <Widget>[
    Container(
    
    
    width: double.infinity,
                  padding: EdgeInsets.all(20),
                   alignment: Alignment.topCenter,
                  child: ElevatedButton(
                    child: Text("Apply For Leave"),
                    onPressed: () {
                Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Myleave(title: 'Myleave',)));
                    },
                  ),),
//                    Container(
  
  
//   width: double.infinity,
//                   padding: EdgeInsets.all(20),
//                    alignment: Alignment.topCenter,
//                   child: ElevatedButton(
//                     child: Text("Add_role"),
//                     onPressed: ()async {
//                await DatabaseHelper.instance.insertrecord({
//                  DatabaseHelper.columnName: "Developer"
//                });

//                     },
//                   ),
//   ),
//  Container(
  
  
//   width: double.infinity,
//                   padding: EdgeInsets.all(20),
//                    alignment: Alignment.topCenter,
//                   child: ElevatedButton(
//                     child: Text("Read_role"),
//                     onPressed: ()async {
//                       var dbRead = await DatabaseHelper.instance.queryDatabase();
//                       print(dbRead);

//                     },
//                   ),
//   ),
                    
                  Container(
    
    
    width: double.infinity,
                  padding: EdgeInsets.all(20),
                   alignment: Alignment.topCenter,
                  child: ElevatedButton(
                    child: Text("LogOut"),
                    onPressed: () {showLoAlert(context);
                
                    },
                  ),)
       ]
       )),
        
        drawer: Drawer(
           child: ListView(
            children: [
                 Container(
                color: Colors.purple,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Menu",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 28.0),
                              
                        ),
                        Divider(),
                        Text("Usename",style: TextStyle(color: Colors.white,fontSize: 20),),
                         Divider(),
                        Text("Role",style: TextStyle(color: Colors.white,fontSize: 20),),
                         Divider(),
                        Text("Department",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ],
                      ),),),
                      
                      ListTile(
                title: const Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Apply For Leave'),
                leading: Icon(Icons.pageview),
               onTap: () {
                  
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:  (context) =>Myleave(title:'Myleave',)),
                  );
                }
                ),
               ListTile(
                title: const Text('LogOut'),
                leading: Icon(Icons.logout),
                onTap: () {showLoAlert(context);
                  
                  // Navigator.pop(context);
                   }
               )
               ],
          ),
          ),
          
      ),
    );
    
}
}


          
   
