import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:test_technique/helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_technique/ui/views/login/login_view.dart';
import 'package:test_technique/ui/views/signup/signup_viewmodel.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return ViewModelBuilder<SignUpViewModel>.reactive(
         builder: (context,model,child) => Scaffold(
             body: Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,
               padding: EdgeInsets.only(top: 30.h,left: 20.w,right: 20.w),
               color: bgAppColor,
               child: SingleChildScrollView(

                 child: Column(
                   children: [
                     Row(
                       children: [
                         TextButton(
                             child: Text(model.login,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp,color:unselectedButtonColor ),),
                             onPressed: (){
                               Navigator.push(
                                 context,
                                 CupertinoPageRoute(builder: (context) => LoginView()),
                               );
                             }),
                         SizedBox(
                           width: 30.w,
                         ),
                         TextButton(
                             child: Text(model.signUp,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp,color:Colors.white),),
                             onPressed: (){

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
                     const SizedBox(
                       height: 20,
                     ),
                     SvgPicture.asset(
                       'assets/Sign up.svg',
                     ),
                     SizedBox(height: 10.h,),
                     Text(model.signupTxt,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28.sp,color: Colors.white),),
                     SizedBox(height: 20.h,),
                     TextField(
                         decoration: InputDecoration(

                             border: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),

                             enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),
                             focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),
                             labelText: model.firstName,
                             fillColor: Colors.white,
                             focusColor: Colors.white,
                             hintText: model.emailExp,
                             hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.sp,color: Colors.white)
                         )
                     ),
                     SizedBox(height: 10.h,),
                     TextField(
                         obscureText: true,
                         decoration: InputDecoration(
                             border: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),
                             enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),
                             focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),
                             labelText: model.name,
                             fillColor: Colors.white,
                             focusColor: Colors.white,
                             hintText: model.emailExp,
                             hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.sp,color: Colors.white)
                         )
                     ),
                     SizedBox(height: 10.h,),
                     TextField(
                         decoration: InputDecoration(
                             border: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),
                             enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),
                             focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),
                             labelText: model.email,
                             fillColor: Colors.white,
                             focusColor: Colors.white,
                             hintText: model.emailExp,
                             hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.sp,color: Colors.white)
                         )
                     ),
                     SizedBox(height: 10.h,),
                     TextField(
                         obscureText: model.showpwd,
                         decoration: InputDecoration(
                             suffixIcon: Align(
                               widthFactor: 1.0,
                               heightFactor: 1.0,
                               child: GestureDetector(
                                 onTap: (){
                                   model.showPwd();
                                 },
                                 child: SvgPicture.asset(
                                   'assets/show.svg',
                                   width: 16.1,
                                   height: 10.15,
                                 ),
                               ),
                             ),

                             border: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),

                             enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),
                             focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),
                             labelText: model.pwd,
                             fillColor: Colors.white,
                             focusColor: Colors.white,
                             hintStyle: normalTextStyle
                         )
                     ),
                     SizedBox(height: 10.h,),
                     TextField(
                         obscureText: model.showConfirmedpwd,
                         decoration: InputDecoration(
                             suffixIcon: Align(
                               widthFactor: 1.0,
                               heightFactor: 1.0,
                               child: GestureDetector(
                                 onTap: (){
                                   model.showConfirmedPwd();
                                 },
                                 child: SvgPicture.asset(
                                   'assets/show.svg',
                                   width: 16.1,
                                   height: 10.15,
                                 ),
                               ),
                             ),

                             border: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),

                             enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),
                             focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0.w),
                             ),
                             labelText: model.confirmPwd,
                             fillColor: Colors.white,
                             focusColor: Colors.white,
                             hintStyle: normalTextStyle
                         )
                     ),
                     Row(
                       children: [
                         Checkbox(
                         checkColor: Colors.white,
                         value: model.checkedTerms,
                         onChanged: (bool? value) {
                           model.onChekechTerms();
                         },
                        ),
                         Text(model.terms,style: normalTextStyle,)

                       ],
                     ),
                     TextButton(
                       style: TextButton.styleFrom(
                         backgroundColor: loginButtonColor,
                         fixedSize: Size(340.w, 55.h),
                         textStyle: const TextStyle(fontSize: 20),
                       ),
                       onPressed: () {

                       },
                       child: Text(model.save,style: normalTextStyle,),
                     )
                   ],
                 ),
               ),
             )
         ),
        viewModelBuilder:() => SignUpViewModel(),
    );
  }
}





