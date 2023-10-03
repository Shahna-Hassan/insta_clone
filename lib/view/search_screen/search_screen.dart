import 'package:flutter/material.dart';
import 'package:insta_clone/imagelist.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 44),
          Container(
           
            child: Padding(
              padding: const EdgeInsets.only(top:8.0,left: 8.0,right: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[400],
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search, color: Colors.grey[900]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          
          Expanded(
            child: GridView.builder(
            
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                


                return Container(
                  
                  // margin: EdgeInsets.all(2.0),
                  decoration:BoxDecoration(image: DecorationImage(image: AssetImage(imageList[index]), fit: BoxFit.cover)) ,
                   // Add some margin for spacing
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
