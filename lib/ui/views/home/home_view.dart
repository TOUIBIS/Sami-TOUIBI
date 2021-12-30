import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:test_technique/helper.dart';
import 'package:test_technique/ui/views/home/home_viewmodel.dart';
import 'package:test_technique/ui/views/home1/home1_view.dart';
import 'package:test_technique/ui/views/upload/upload_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
         builder: (context,model,child) => Scaffold(
           body: getViewForIndex(model.currentIndex),
           bottomNavigationBar: BottomNavigationBar(
             type: BottomNavigationBarType.fixed,
             backgroundColor: bottonNavBarColor,
             currentIndex: model.currentIndex,
             onTap: model.setIndex,
             items: [
               BottomNavigationBarItem(
                 title: Text(''),
                   icon: SvgPicture.asset(
                     'assets/Home Black color.svg',
                   ),
               ),
               BottomNavigationBarItem(
                 title: Text(''),
                 icon: SvgPicture.asset(
                   'assets/Block.svg',
                 ),
               ),
               BottomNavigationBarItem(
                   title: Text(''),
                   icon: Icon(
                     Icons.add_circle_outlined,
                     size: 48.r,
                     color : loginButtonColor,
                   )
               ),
               BottomNavigationBarItem(
                 title: Text(''),
                 icon: SvgPicture.asset(
                   'assets/Block.svg',
                 ),
               ),
               BottomNavigationBarItem(
                 title: Text(''),
                 icon: SvgPicture.asset(
                   'assets/Block.svg',
                 ),
               ),
             ],
           ),
         ),
      viewModelBuilder:() => HomeViewModel(),
    );
  }

  Widget getViewForIndex(int index){
    switch (index){
      case 0:
        return Home1View();
      case 2:
        return UploadView();
      default :
        return Home1View();
    }
  }
}
