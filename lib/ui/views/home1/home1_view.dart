import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:test_technique/helper.dart';
import 'package:test_technique/models/post.dart';
import 'package:test_technique/ui/views/home1/home1_viewmodel.dart';
import 'package:test_technique/ui/widgets/post_widget.dart';


class Home1View extends StatelessWidget {
  const Home1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.utc(2021,5,5,5,5,5);
    Post post1 = new Post('Samy TOUIBI',now,"video Name","Lorem ipsum dolor sit amet, consetetur sadipscing  😍");

    return ViewModelBuilder<Home1ViewModel>.reactive(
         builder: (context,model,child) => Scaffold(
             body: Column(
               children: [
                 Card(
                   child: Padding(
                     padding: const EdgeInsets.only(top: 30,right: 10,left: 10,bottom: 20),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children:  [
                         const CircleAvatar(
                           radius: 35,
                           backgroundColor: Colors.blue,
                           child: CircleAvatar(
                             radius: 30,
                             backgroundImage: AssetImage('batman.jpg'),
                           ),
                         ),
                         SizedBox(width: 10.w,),
                         Column(
                           children: [
                              Text(model.name,style: nameStyle,),
                              Text(model.desc,style: descStyle,),
                           ],
                         ),
                         SvgPicture.asset(
                           'assets/Search.svg',
                         ),
                       ],
                     ),
                   ),
                 ),
                 Text(model.content,style: descStyle,),
                 PostWidget(post: post1,)
               ],
             )
         ),
        viewModelBuilder:() => Home1ViewModel(),

    );
  }
}





