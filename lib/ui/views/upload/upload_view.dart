import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test_technique/ui/views/upload/upload_viewmodel.dart';


class UploadView extends StatelessWidget {
  const UploadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return ViewModelBuilder<UploadViewModel>.reactive(
         builder: (context,model,child) => Scaffold(
             body: Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,
               child: Center(
                 child: Text("Upload ..."),
               ),
             )
         ),
        viewModelBuilder:() => UploadViewModel(),

    );
  }
}





