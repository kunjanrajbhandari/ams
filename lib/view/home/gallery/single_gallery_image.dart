import 'package:amss/view/widget/appbar/text_appbar.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

// class SingleImageGallery extends StatelessWidget {
//   final PageController pageController;
//   List<dynamic> urlImages;
//   int? ind;
//   // int i=0;
//    SingleImageGallery({Key? key,   required this.urlImages, this.ind}) : pageController=PageController(initialPage: ind!);
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        key: _scaffoldKey,
//       body: Stack(
//         children: [
          
//           PhotoViewGallery.builder(
//             pageController: pageController,
//             itemCount: urlImages.length,
//             builder: (context,index){
//               final urlImagei = urlImages[index];
//               return PhotoViewGalleryPageOptions(
              
//                 imageProvider: NetworkImage(urlImagei),
//                 minScale: PhotoViewComputedScale.contained,
//                 maxScale: PhotoViewComputedScale.contained*4
//               );
//             },
//           ),
//           TextAppbar(textColor: Colors.black, opacity: Colors.black,title: '',),
//         ],
//       )
      
//     );
//   }
// }