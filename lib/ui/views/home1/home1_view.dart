import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test_technique/ui/views/home1/home1_viewmodel.dart';


class Home1View extends StatelessWidget {
  const Home1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return ViewModelBuilder<Home1ViewModel>.reactive(
         builder: (context,model,child) => Scaffold(
             body: Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,
               child: Center(
                 child: Text("Lorem ..."),
               ),
             )
         ),
        viewModelBuilder:() => Home1ViewModel(),

    );
  }
}





