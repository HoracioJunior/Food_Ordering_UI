import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'signup_page.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _toggleVisibility = true;
  bool _toggleConfirmVisibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.deepOrange,
                    Colors.deepOrangeAccent,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(65),
                  bottomRight: Radius.circular(65)
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                 Align(
                   alignment: Alignment.center,
                    child: Icon(Icons.fastfood, size: 90, color: Colors.white,),
                 ),
                 Spacer(),
                 //SizedBox(height: 20,),
                 Align(
                   alignment: Alignment.center,
                   child: Padding(
                     padding: const EdgeInsets.only(right: 32, bottom: 32, left: 32),
                     child: Text("Iniciar Sessão",
                     style: TextStyle(
                       fontSize: 25.0,
                       fontWeight: FontWeight.bold,
                       color: Colors.white,
                     ),
                     ),
                   ),
                   ),
                ],
              ),
            ),
            //SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.0,
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 50,
                    padding: EdgeInsets.only(top: 4,bottom: 4,left: 16,right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 10.0)
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.email, color: Colors.grey,),
                        hintText: "Email do Usuário",
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 50,
                    padding: EdgeInsets.only(
                      top: 4,
                      bottom: 4,
                      left: 16,
                      right: 16
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 10.0)
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.vpn_key, color: Colors.grey,),
                        hintText: "Senha do Usuario",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _toggleVisibility = !_toggleVisibility;
                              });
                            },
                            icon: _toggleVisibility
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                          ),
                      ),
                       obscureText: _toggleVisibility,
                    ),
                  ),
                  GestureDetector(
                  onTap: (){
                    //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignUpPage()));
                  },
                      child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 16, right: 34
                        ),
                        child: Text("Esqueceu a senha ?",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent
                        ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  GestureDetector(
                    onTap: (){},
                   child: Container(
                      height: 50,
                       width: MediaQuery.of(context).size.width/1.2,
                       decoration: BoxDecoration(
                         gradient: LinearGradient(
                           colors: [
                            Colors.deepOrange,
                            Colors.deepOrangeAccent,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(50)
                       ),
                       child: Center(
                         child: Text("Iniciar Sessão".toUpperCase(),
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                         ),
                         ),
                       ),
                    ),
                  ),
                ],
              ),
            ),
            //Row(//Vai conter Os icons de Gmail, Facebook e uma descricao),
          ],
        ),
        ),
    );
  }
}
