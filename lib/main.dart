import 'package:flutter/material.dart';
import 'package:flutter_demoproject/common.dart';
import 'package:flutter_demoproject/dashboard.dart';
import 'package:flutter_demoproject/%20forgotpassword.dart';
import 'package:flutter_demoproject/register.dart';
import 'package:postgres/postgres.dart';

import 'data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'demoproject1'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
final String title;
@override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 final Formkey = GlobalKey<FormState>();
  bool isChecked = false;
 final userEmailcontroller = TextEditingController();
 final userpasswordcontroller = TextEditingController();
 bool passwordVisible=false;  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      // appBar: AppBar(
       
      //   title: Text('welocme'),
      // ),
      body: Center(
       child:SingleChildScrollView(
        child:Form(
          key:Formkey,
        child: Column(
         children: <Widget>[
           Image.asset('lib/assets/login.png',alignment: Alignment.topCenter,width: 600,height: 300,),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical:25),
              child: TextFormField(
                controller: userEmailcontroller,
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid email';
                    }
                    return null;
                  },
                decoration: InputDecoration(
                     border: OutlineInputBorder(),
                    labelText: 'Useremail',
                    prefixIcon: Icon(Icons.email),
                   ),
              ),
              
            ),
              Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical:25),
              child: TextFormField(
                //  obscureText: true,
                 obscureText: passwordVisible,
                controller: userpasswordcontroller,
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid password';
                    }
                    return null;
                  },
                decoration: InputDecoration(
                     border: OutlineInputBorder(),
                    labelText: 'Password',
                     prefixIcon: Icon(Icons.lock),
                     helperStyle:TextStyle(color:Colors.purple),
                   suffixIcon: IconButton(
                     icon: Icon(passwordVisible
                         ? Icons.visibility
                         : Icons.visibility_off),
                     onPressed: () {
                       setState(
                         () {
                           passwordVisible = !passwordVisible;
                         },
                       );
                     },
                   ),
                   alignLabelWithHint: false,
                   filled: true,
                 ),
                 keyboardType: TextInputType.visiblePassword,
                 textInputAction: TextInputAction.done,
                ),
              ),
              Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(

                              checkColor: Colors.white,
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            const Text(
                              'Remember me',
                              style: TextStyle(fontSize: 17),
                            ),
                ],)]
                        ),
            
           Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  child: ElevatedButton(
                    child: Text("Login", style: color(Colors.amber)),
                    onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (Formkey.currentState!.validate()) {


                          
                          operation(userEmailcontroller.text,userpasswordcontroller.text);

                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyDashboard(title: 'MyDashboard',)),
                          );
                        }
                      },
                  ),
                ),
                
                Row(
                children: <Widget>[
                  // const Text('Does not have account?'),
                  TextButton(
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(fontSize: 20),
                    ),
                   onPressed: () {
                    
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => forgotpassword()));
              },
                  ),
              Spacer(),
               TextButton(
                    child: const Text(
                      'Register Here',
                      style: TextStyle(fontSize: 20),
                    ),
                   onPressed: () {
                    
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => register()));
              },
                  )

                ],
                 mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
        ),
        ),
      ),
      ),
  );
  }
}




















































































