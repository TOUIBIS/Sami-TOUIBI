import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:test_technique/helper.dart';
import 'package:test_technique/ui/views/upload/upload_viewmodel.dart';


class UploadView extends StatelessWidget {
  const UploadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return ViewModelBuilder<UploadViewModel>.reactive(
         builder: (context,model,child) => Scaffold(
           appBar: AppBar(
             title: Text(model.uploadVideo,style: nameStyle,),
             backgroundColor: bottonNavBarColor,
             leading: IconButton(
               color: Colors.black,
               onPressed: () {
                 Navigator.pop(context);
               },
               icon: Icon(Icons.arrow_back),
             ),
           ),
             body: Padding(
               padding:  EdgeInsets.only(top: 20.h,right: 20.w,left: 20.w),
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text(model.videoTitle, style: TextStyle(fontWeight: FontWeight.bold),),
                     ],
                   ),
                   TextField(
                       decoration: InputDecoration(
                         filled: true,
                         fillColor: textFieldBgColor,
                         enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(
                                 Radius.circular(10)
                             ),
                             borderSide: BorderSide(
                                 color: textFieldBgColor,
                                 width: 2
                             )
                         ),
                         focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(
                                 Radius.circular(10)
                             ),
                             borderSide: BorderSide(
                                 color: textFieldBgColor,
                                 width: 2
                             )
                         ),

                       )
                   ),
                   SizedBox(height: 10.h,),
                   Row(
                     children: [
                       Text(model.desc, style: TextStyle(fontWeight: FontWeight.bold),),
                     ],
                   ),
                   TextField(
                     keyboardType: TextInputType.multiline,
                     textCapitalization: TextCapitalization.sentences,
                     maxLines: null,
                     decoration: InputDecoration(
                       filled: true,
                       fillColor: textFieldBgColor,
                       enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.all(
                               Radius.circular(10)
                           ),
                           borderSide: BorderSide(
                               color: textFieldBgColor,
                               width: 2
                           )
                       ),
                       focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.all(
                               Radius.circular(10)
                           ),
                           borderSide: BorderSide(
                               color: textFieldBgColor,
                               width: 2
                           )
                       ),

                     ),
                   ),
                   SizedBox(height: 30.h,),
                   TextButton(
                     style: TextButton.styleFrom(
                       backgroundColor: loginButtonColor,
                       fixedSize: Size(181.w, 53.h),
                       textStyle: const TextStyle(fontSize: 20),
                     ),
                     onPressed: () {
                       /*
                       Navigator.push(
                         context,
                         CupertinoPageRoute(builder: (context) => HomeView()),
                       );
                       */

                     },
                     child: Text(model.upload,style: normalTextStyle,),
                   )
                 ],
               ),
             ) 
         ),
        viewModelBuilder:() => UploadViewModel(),

    );
  }
}





