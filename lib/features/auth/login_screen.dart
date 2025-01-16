
import 'package:ecommerce/core/contants/app_strings.dart';
import 'package:ecommerce/core/contants/app_styles.dart';
import 'package:ecommerce/features/admin/admin_dashboard.dart';
import 'package:ecommerce/features/admin/screens/add_product.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
            // height: 400,
            // width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "loginbg.jpg"
                ),
                fit: BoxFit.cover,
                ),
              color: const Color.fromARGB(255, 176, 209, 218),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Column(
                //   children: [
                //     Container(
                //     height: 400,
                //     width: 400,
                //     decoration: BoxDecoration(
                //       color: Colors.grey,
                //       borderRadius: BorderRadius.circular(10.0),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey,
                //           blurRadius: 10.0,
                //           spreadRadius: 0.0,
                //           offset: Offset(2.0, 2.0),
                //         ),
                //       ],
                //     ),
                //               ),
                //   ],
                // ),
                Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "",
                            // AppStrings.loginText,
                            style: TextStyle(
                              fontSize: AppStyle.fontSizeLarge,
                              color: AppStyle.gridColorLight,
                              ),
                            ),
                        ],
                      ),
                    Center(
                      child: SizedBox(
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 20.0),
                              TextFormField(
                                controller: usernameController,
                                onChanged: (value) => username = value,
                                decoration: InputDecoration(
                                  labelText: "Username",
                                  labelStyle: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 40,
                                     color: AppStyle.gridColorLight,
                                     ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none
                                  ),
                                    ),
                                  style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 30,
                                     color: AppStyle.gridColorLight,
                                     ),
                                  ),
                                  SizedBox(height: 20.0),
                                  TextFormField(
                                controller: passwordController,
                                onChanged: (value) => password = value,
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 40,
                                     color: AppStyle.gridColorLight,
                                     ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none
                                  ),
                                    ),
                                  style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 30,
                                     color: AppStyle.gridColorLight,
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          print("Username: $username");
                                          print("Password: $password");
                                          Navigator.push(  
                                            context,  
                                            MaterialPageRoute(builder: (context) => AdminDashboard()),  
                                          ); 
                                        },
                                        child: Text(
                                          "Login",
                                           style: TextStyle(fontSize: 20.0),
                                         ),
                                      ),
                                      SizedBox(width: 10,),
                                      ElevatedButton(
                                        onPressed: () {
                                          print("Username: $username");
                                          print("Password: $password");
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "Back",
                                           style: TextStyle(fontSize: 20.0),
                                         ),
                                      ),
                                    ],
                                  ),
                                  ]
                          )
                              ),
                      ),
                        ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )
    );

  }
}