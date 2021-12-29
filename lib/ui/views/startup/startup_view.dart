import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:test_technique/ui/views/home/home_view.dart';
import 'package:test_technique/ui/views/startup/startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();

    return ViewModelBuilder<StartupViewModel>.reactive(
         builder: (context,model,child) => Scaffold(
             body: Container(
               width: MediaQuery.of(context).size.width,
               padding: EdgeInsets.only(top: 30,left: 20,right: 20),
               color: const Color.fromRGBO(25, 88, 96, 1),
               child: Column(
                 children: [
                   Row(
                     children: [
                       TextButton(
                          child: Text('Log In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                           onPressed: (){

                          }),
                       SizedBox(
                         width: 30,
                       ),
                       TextButton(
                           child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color.fromRGBO(112, 112, 112, 1)),),
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
                     width: 33,
                     height: 33,
                   ),
                   SizedBox(height: 10,),
                   Text('Log In to Account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.white),),
                   SizedBox(height: 20,),
                    TextField(
                      controller: nameController,
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
                       controller: nameController,
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
                           labelText: 'PASSWORD',
                           fillColor: Colors.white,
                           focusColor: Colors.white,
                           hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.white)
                       )
                   ),
                   Text('Forgot Password?',textAlign: TextAlign.right,)
                 ],
               ),
             )
         ),
        viewModelBuilder:() => StartupViewModel(),
    );
  }
}


class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Sign Up'),
      ),
    );
  }
}


