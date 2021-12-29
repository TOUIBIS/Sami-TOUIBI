import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test_technique/ui/views/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
         builder: (context,model,child) => Scaffold(
           body: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Center(
                 child: Text(
                   model.title
                 ),
               ),
               ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   primary: Colors.red, // background
                   onPrimary: Colors.white, // foreground
                 ),
                 onPressed: () { },
                 child: Text('Next view'),
               )
             ],
           ),
           bottomNavigationBar: BottomNavigationBar(
             type: BottomNavigationBarType.fixed,
             backgroundColor: Colors.blue,
            // currentIndex: model.currentIndex,
             //onTap: model.setIndex,
             items: [
               BottomNavigationBarItem(
                   title: Text("Post"),
                   icon: Icon(Icons.ten_k)
               ),
               BottomNavigationBarItem(
                   title: Text("Post2"),
                   icon: Icon(Icons.ten_k)
               )
             ],
           ),
         ),
      viewModelBuilder:() => HomeViewModel(),
    );
  }
}
