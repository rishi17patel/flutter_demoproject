import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_demoproject/dashboard.dart';
import 'package:flutter_demoproject/data.dart';
import 'package:flutter_demoproject/main.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final Registerkey = GlobalKey<FormState>();
  final frnm= TextEditingController();
  final lsnm= TextEditingController();
  final eid= TextEditingController();
  final phone= TextEditingController();
  final pswd= TextEditingController();
final cpswd  = TextEditingController();
bool passwordVisible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.purple,
      title: Text("Sign up"),
      centerTitle: true,),
      body: Center(
        child: Form(
          key: Registerkey,
          child: ListView(
          children: <Widget>[
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical:15),
              child: TextFormField(
                controller: frnm,
                
                validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                decoration: InputDecoration(
                     border: OutlineInputBorder(),
                    labelText: 'First Name',
                     prefixIcon: Icon(Icons.person),
                   ),
              ),
              
              
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical:15),
              child: TextFormField(
                controller: lsnm,
                
                validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                decoration: InputDecoration(
                     border: OutlineInputBorder(),
                    labelText: 'Last Name',
                     prefixIcon: Icon(Icons.person),
                   ),
              ),
              
              
            ),
             Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical:15),
              child: TextFormField(
                controller: eid,
                validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email';
                    }
                    return null;
                  },
                decoration: InputDecoration(
                     border: OutlineInputBorder(),
                    labelText: 'Email id',
                     prefixIcon: Icon(Icons.email),
                   ),
              ),
              
              
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical:15),
              child: TextFormField(
                controller: phone,
                validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter contact no';
                    }
                    return null;
                  },
                decoration: InputDecoration(
                     border: OutlineInputBorder(),
                    labelText: 'Contact number',
                     prefixIcon: Icon(Icons.call_end_rounded),
                   ),
              ),
              
              
            ),
           
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical:15),
              child: TextFormField(
                obscureText: passwordVisible,
                controller: pswd,
                validator: (value) { 
                    if (value == null || value.isEmpty) 
                      return 'Please enter valid Confirm password';
                    if (value != pswd.text)
                    return "Password Doesnot Match";
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
Padding(
                // padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 20),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 25,
                ),
                child: TextFormField(
                   controller:cpswd,
                    validator: (value) {
                    if (value == null || value.isEmpty) 
                      return 'Please enter valid Confirm password';
                    if (value != pswd.text)
                    return "Password Doesnot Match";
                    
                  },
                  
                decoration: InputDecoration(
                     border: OutlineInputBorder(),
                    labelText: 'ConfirmPassword',
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
            Container(
            width:double.infinity ,
            padding: EdgeInsets.all(20),
            alignment: Alignment.topCenter,
            child:ElevatedButton(
              child:Text("Create Account"),
              onPressed: () {

               if (Registerkey.currentState!.validate()) {
                registerhere(frnm.text,lsnm.text,eid.text,phone.text,pswd.text);
                Navigator.push(
                            context,
                            MaterialPageRoute(
                               
                                builder: (context) => const MyHomePage(title: 'MyHomePage',)
                                ),
                          );
                        } 
               },
            ),),
           ]
          )
        ),
      ),
    );
    
  }
}