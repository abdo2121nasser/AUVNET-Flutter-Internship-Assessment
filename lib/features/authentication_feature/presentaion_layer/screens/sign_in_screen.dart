import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/component/local_image_assets_widget.dart';



class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: MediaQuery.maybeOf(context)!.size.height*0.01,),
          const LocalImageAssetsWidget(imagePath: kNawelImage,)

        ],
      ),

    );
  }
}
