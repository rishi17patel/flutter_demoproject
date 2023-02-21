import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'package:postgres/postgres.dart';
class AppCommon{
  static var connection;
}

showLoAlert(BuildContext context1) {
  showDialog(
      context: context1,
      builder: (BuildContext context2) {
        return AlertDialog(
          title: Text("Are you sure you want to log out?"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context2,
                    MaterialPageRoute(builder: (context1) => MyApp()),
                  );
                },
                child: Text("Yes")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context2);
                },
                child: Text("No")),
          ],
        );
      });
}
// Future operation(String text, [String text]) async {
//   var connection = PostgreSQLConnection(
//       "192.168.1.93", // hostURL
//       5432, // port
//       "leave_database", // databaseName
//       username: "postgres",
//       password: "AdvEnt4pgSQL",
//       useSSL: false);
//   try {
//     await connection.open();
//     if(connection.isClosed == false)
//         // await connection.query('''
//         //   INSERT INTO ROLE(ROLE_ID, ROLE_NAME) VALUES(3, 'Intern')
//         //  ''');
//       // await connection.query("UPDATE ROLE SET ROLE_NAME='HR' WHERE ROLE_ID=2");
//       // await connection.query('DELETE FROM ROLE WHERE ROLE_ID>2');
//       //  await connection.query('''
//       //     INSERT INTO DEPARTMENT(DEP_ID, DEPNAME) VALUES(3, 'INTERN')
//       //    ''');
  

//       print("Connected");
//        } catch (e) {   
//     print("error");
//     print(e.toString());
//   }
// }