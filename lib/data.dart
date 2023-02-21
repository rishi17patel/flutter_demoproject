//  import "dart:io";
//  import '../main.dart';
//  import "package:postgres/postgres.dart";
//  void main() async{
//    var connection = PostgreSQLConnection(
//          "192.168.1.87", 5432, "leave_database",
//          username: "postgres", password: "AdvEnt4pgSQL");
//      try {
//        await connection.open();
//     } catch (e) {
//        print(e);
//     }

//    Map<String, dynamic> data = {
//     "display_name": "foo",
//      "email": "foo@gmail.com"
//    };
//   await setData(connection, "users", data);
  
//  }


//  Future<void> setData(PostgreSQLConnection connection, String table, Map<String, dynamic> data) async {
//    await connection.query("""
//      INSERT INTO LOGIN(EMAIL,PASSWORD ) VALUES(1, 'TEST')
//    """);
//  }

// import 'package:flutter/material.dart';
// import 'package:flutter_leave/main.dart';
import 'package:postgres/postgres.dart';

import 'common.dart';
// import 'package:flutter_leave/services/pgadmin.dart';

Future operation(email,password) async {
   AppCommon.connection = PostgreSQLConnection(
      "192.168.1.93", // hostURL
      5432, // port
      "leave_database", // databaseName
      username: "postgres",
      password: "AdvEnt4pgSQL",
      useSSL: false);

  await AppCommon.connection.open();
  final data = <String, dynamic>{
    "email": email,
    "password": password,
  };

  // await connection.close();

  if (AppCommon.connection.isClosed == false) print("Connected");

  // Future<void> setData(PostgreSQLConnection connection, String table,
  //     Map<String, dynamic> data) async {
  //   await setData(connection, "login", data);
    await AppCommon.connection.execute(
        "INSERT INTO LOGIN (email, pwd) VALUES (@email, @password)",
        substitutionValues: data);
        
  }
  Future registerhere(Firstname,Lastname,Emailid,Phonenumber,Password) async {
   AppCommon.connection = PostgreSQLConnection(
      "192.168.1.93", // hostURL
      5432, // port
      "leave_database", // databaseName
      username: "postgres",
      password: "AdvEnt4pgSQL",
      useSSL: false);
      await AppCommon.connection.open();
  final data = <String, dynamic>{
    "Firstname":Firstname,
    "Lastname":Lastname,
    "Emailid": Emailid,
    "Phonenumber":Phonenumber,
    "Password": Password,
  };
  if (AppCommon.connection.isClosed == false) print("Connected");
  await AppCommon.connection.execute(
        "INSERT INTO REGESTER (Firstname,Lastname,Emailid,Phonenumber,Password) VALUES (@Firstname,@Lastname,@Emailid,@Phonenumber,@Password)",
        substitutionValues: data);
      
      }
 Future suleave(Fromdate, Todate, Numdays, Reason, Contactname, Contactnumber, ) async {
   AppCommon.connection = PostgreSQLConnection(
      "192.168.1.93", // hostURL
      5432, // port
      "leave_database", // databaseName
      username: "postgres",
      password: "AdvEnt4pgSQL",
      useSSL: false);
      await AppCommon.connection.open();
  final data = <String, dynamic>{
    "Fromdate":Fromdate,
    "Todate":Todate,
    "Numdays": Numdays,
    "Reason": Reason,
    "Contactname":Contactnumber,
    "Contactnumber": Contactnumber,
  };
  if (AppCommon.connection.isClosed == false) print("Connected");
  await AppCommon.connection.execute(
        "INSERT INTO LEAVEINFO (Fromdate,Todate,Numdays,Reason,Contactname,Contactnumber) VALUES (@Fromdate,@Todate,@Numdays,@Reason,@Contactname,@Contactnumber)",
        substitutionValues: data);
      
      }




