import 'package:flutter/material.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../pages/home_page.dart';
import '../pages/order_page.dart';
import '../pages/profile_page.dart';
import '../pages/cardapio_page.dart';

class MainScreen extends StatefulWidget{
  @override
  _MainScreenState createState() => _MainScreenState();
  }
  
  class _MainScreenState extends State<MainScreen> {
    int currentTabIndex=0;
    List<Widget> pages;
    Widget currentPage;

    HomePage homePage;
    OrderPage  orderPage;
    ProfilePage profilePage;
    CardapioPage cardapioPage;

    @override
    void initState(){
      super.initState();  
      homePage= HomePage();
      orderPage = OrderPage();
      profilePage = ProfilePage();
      cardapioPage = CardapioPage();
      pages = [homePage, cardapioPage,orderPage, profilePage];

      currentPage = homePage;
    }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
           currentTabIndex = index;
           currentPage = pages[index];

          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Inicio")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text("Cardapio")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Carrinho")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Perfil")
          ),
        ],
      ),
      body: currentPage,
    );
  }
  }