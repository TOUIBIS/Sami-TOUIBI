import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:test_technique/helper.dart';
import 'package:test_technique/ui/views/home/home_view.dart';
import 'package:test_technique/ui/views/startup/startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return ViewModelBuilder<StartupViewModel>.reactive(
         builder: (context,model,child) => Scaffold(
             body: SingleChildScrollView(
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height,
                 padding: EdgeInsets.only(top: 30,left: 20,right: 20),
                 color: bgAppColor,
                 child: Column(
                   children: [
                     Row(
                       children: [
                         TextButton(
                            child: Text(login,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                             onPressed: (){

                            }),
                         SizedBox(
                           width: 30,
                         ),
                         TextButton(
                             child: Text(signUp,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:unselectedButtonColor),),
                             onPressed: (){

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
                     SizedBox(height: 10,),
                     Text(loginTxt,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.white),),
                     SizedBox(height: 20,),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(

                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),

                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 1.0),
                            ),
                          labelText: 'EMAIL',
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          hintText: 'example@nomail.com',
                          hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.white)
                        )
                      ),
                     SizedBox(height: 10,),

                     TextField(
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
                               borderSide: BorderSide(color: Colors.white, width: 1.0),
                             ),

                             enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0),
                             ),
                             focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white, width: 1.0),
                             ),
                             labelText: 'PASSWORD',
                             fillColor: Colors.white,
                             focusColor: Colors.white,
                             hintStyle: normalTextStyle
                         )
                     ),
                     SizedBox(height: 10,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text('Forgot Password?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                       ],
                     ),
                     SizedBox(height: 10,),
                     TextButton(
                       style: TextButton.styleFrom(
                         backgroundColor: loginButtonColor,
                         fixedSize: Size(340, 55),
                         textStyle: const TextStyle(fontSize: 20),
                       ),
                       onPressed: () {

                       },
                       child: const Text(login,style: normalTextStyle,),
                     ),
                     SizedBox(height: 10,),
                     TextButton(
                       style: TextButton.styleFrom(
                         backgroundColor: loginButtonColor,
                         fixedSize: Size(340, 55),
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
                           SizedBox(width: 10,),
                           const Text(loginWithGoogle,style: normalTextStyle,),
                         ],
                       ),
                     )
                   ],
                 ),
               ),
             )
         ),
        viewModelBuilder:() => StartupViewModel(),
    );
  }
}





