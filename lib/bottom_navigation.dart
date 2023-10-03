import 'package:flutter/material.dart';
import 'package:insta_clone/view/acct_screen/acct_screen.dart';
import 'package:insta_clone/view/home_screen/home_screen.dart';
import 'package:insta_clone/view/post_screen/post_screen.dart';
import 'package:insta_clone/view/reel_screen/reel_screen.dart';
import 'package:insta_clone/view/search_screen/search_screen.dart';


class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

int selection = 0;
bool _bottomNavBarVisible = true;

   void tap(int index) {
  setState(() {
    selection = index;
_bottomNavBarVisible = index != 3;
   
    // Use a switch statement to navigate to different screens based on the selected tab.
    
  });
}
final screens=[HomePage(), SearchScreen(),PostScreen(),ReelScreen(),AcctScreen()];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: screens[selection],
      bottomNavigationBar: Visibility(
        visible: _bottomNavBarVisible,
        child: BottomNavigationBar(
      
                        currentIndex: selection,
          onTap: (value) => tap(value),
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey[900],
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        
        
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.movie_creation_outlined),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: ""),
      
          ]),
      ),


    );
  }
}