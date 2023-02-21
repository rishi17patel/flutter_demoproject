import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_demoproject/main.dart';

class forgotpassword extends StatefulWidget {
  const forgotpassword({super.key});

  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  final Forgotkey = GlobalKey<FormState>();
  bool passwordVisible=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar( backgroundColor: Colors.purple,
      title: Text("New Password"),
      centerTitle: true,),
      body: Center(
        child:Form(
          key: Forgotkey,
          child: ListView(
            children: <Widget>[
              Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical:15),
              child: TextFormField(
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
                obscureText: passwordVisible,
                validator: (value) {
                   
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
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

               Container(
            width:double.infinity ,
            padding: EdgeInsets.all(20),
            alignment: Alignment.topCenter,
            child:ElevatedButton(
              child:Text("Submit"),
              onPressed: () {
               if (Forgotkey.currentState!.validate()) {
                Navigator.push(
                            context,
                            MaterialPageRoute(
                               
                                builder: (context) => const MyHomePage(title: 'MyHomePage',)
                                ),
                          );
                        } 
                
              },
            ),),
            ],
          ),
        ) ),
      
    );
  }
}