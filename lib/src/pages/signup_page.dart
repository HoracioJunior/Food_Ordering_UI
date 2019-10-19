import 'package:flutter/material.dart';
import 'sign_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool _toggleVisibility = true;
  bool _toggleConfirmVisibility = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/3.5,
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
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Spacer(),
                   Align(
                     alignment: Alignment.center,
                      child: Icon(Icons.fastfood, size: 80, color: Colors.white,),
                   ),
                   Spacer(),
                   //SizedBox(height: 20,),
                   Align(
                     alignment: Alignment.center,
                     child: Padding(
                       padding: const EdgeInsets.only(right: 32, bottom: 32, left: 32),
                       child: Text("Cadastrar-se",
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
              SizedBox(height: 25),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.5,
                //padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      height: 50,
                      padding: EdgeInsets.only(top: 4,bottom: 4,left: 16,right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
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
                      padding: EdgeInsets.only(top: 4,bottom: 4,left: 16,right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black26, blurRadius: 10.0)
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.person, color: Colors.grey,),
                          hintText: "Nome do usuario",
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
                        borderRadius: BorderRadius.all(Radius.circular(5)),
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
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black26, blurRadius: 10.0)
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.vpn_key, color: Colors.grey,),
                          hintText: "Confirmar senha do usuario",
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _toggleConfirmVisibility = !_toggleConfirmVisibility;
                                });
                              },
                              icon: _toggleConfirmVisibility
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                            ),
                        ),
                         obscureText: _toggleConfirmVisibility,
                      ),
                    ),
                    SizedBox(height: 20,),
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
                            borderRadius: BorderRadius.circular(5)
                         ),
                         child: Center(
                           child: Text("Cadastrar-se".toUpperCase(),
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                           ),
                           ),
                         ),
                      ),
                    ),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                            GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
                          },
                          child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 16,
                            ),
                            child: Text("Já tens Conta? Iniciar Sessão AQUI",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent
                            ),
                            ),
                          ),
                        ),
                      ),
                        
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ),
    );
  }
}
