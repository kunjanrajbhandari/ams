import 'package:amss/view/home/gallery/single_gallery_image.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({ Key? key }) : super(key: key);

  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  List imagelist = [
    'image1.jpeg','image2.jpeg','image3.jpeg','image4.jpeg','image1.jpeg','image5.jpeg', 'image1.jpeg','image2.jpeg','image3.jpeg','image4.jpeg','image1.jpeg','image5.jpeg', 'image1.jpeg','image2.jpeg','image3.jpeg','image4.jpeg','image1.jpeg','image5.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:ProfileAppBarC(title: "Gallery",backArrow: true,),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1/1,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3),
              itemCount: imagelist.length,
              itemBuilder: (BuildContext ctx, index) {
                return GestureDetector(
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  SingleImageGallery(urlImages: imagelist,ind: index,)));
                  },
                  child: Container(
                    height: 88,
                    width: 22,
                    //child: Text("afds"),
                    //alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        //borderRadius: BorderRadius.circular(15
                     // ),
                      image: DecorationImage(image: AssetImage('assets/gallery/${imagelist[index]}'), fit: BoxFit.cover)
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}