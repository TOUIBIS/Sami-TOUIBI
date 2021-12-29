import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:test_technique/helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_technique/ui/views/login/login_viewmodel.dart';
import 'package:test_technique/ui/views/signup/signup_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return ViewModelBuilder<LoginViewModel>.reactive(
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
                             })
                       ],
                     ),
                     const Divider(
                       color: Colors.white,
                       height: 3,
                       thickness: 3,
                       indent: 10,
                       endIndent: 230,
                     ),
                     const SizedBox(
                       height: 20,
                     ),
                     SvgPicture.asset(
                       'assets/Login.svg',
                     ),
                     SizedBox(height: 10.h,),
                     Text(model.loginTxt,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28.sp,color: Colors.white),),
                     SizedBox(height: 20.h,),
                      TextField(
                        controller: emailController,
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
                         obscureText: true,
                         controller: passwordController,

                         decoration: InputDecoration(
                           suffixIcon: Align(
                             widthFactor: 1.0,
                             heightFactor: 1.0,
                             child: SvgPicture.asset(
                               'assets/show.svg',
                               width: 16.1,
                                 height: 10.15,
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
                     Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text(model.frgtPwd,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                       ],
                     ),
                     SizedBox(height: 10.h,),
                     TextButton(
                       style: TextButton.styleFrom(
                         backgroundColor: loginButtonColor,
                         fixedSize: Size(340.w, 55.h),
                         textStyle: const TextStyle(fontSize: 20),
                       ),
                       onPressed: () {

                       },
                       child: Text(model.login,style: normalTextStyle,),
                     ),
                     SizedBox(height: 10.h,),
                     TextButton(
                       style: TextButton.styleFrom(
                         backgroundColor: loginButtonColor,
                         fixedSize: Size(340.w, 55.h),
                         textStyle: const TextStyle(fontSize: 20),
                       ),
                       onPressed: () {

                       },
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           SvgPicture.asset(
                             'assets/google.svg',
                           ),
                           SizedBox(width: 10.w,),
                           Text(model.loginWithGoogle,style: normalTextStyle,),
                         ],
                       ),
                     )
                   ],
                 ),
               ),
             )
         ),
        viewModelBuilder:() => LoginViewModel(),
    );
  }
}





