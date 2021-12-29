import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:test_technique/helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_technique/ui/views/signup/signup_viewmodel.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return ViewModelBuilder<SignUpViewModel>.reactive(
         builder: (context,model,child) => Scaffold(
             body: SingleChildScrollView(
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height,
                 padding: EdgeInsets.only(top: 30.h,left: 20.w,right: 20.w),
                 color: bgAppColor,
                 child: Column(
                   children: [
                     Row(
                       children: [
                         TextButton(
                             child: Text(model.login,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp,color: Colors.white),),
                             onPressed: (){

                             }),
                         SizedBox(
                           width: 30.w,
                         ),
                         TextButton(
                             child: Text(model.signUp,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp,color:unselectedButtonColor),),
                             onPressed: (){
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => SignUpView()),
                               );
                             }),

                       ],
                     ),
                     const Divider(
                       color: Colors.white,
                       height: 3,
                       thickness: 3,
                       indent: 90,
                       endIndent: 150,
                     ),
                   ],
                 ),
               ),
             )
         ),
        viewModelBuilder:() => SignUpViewModel(),

    );
  }
}





