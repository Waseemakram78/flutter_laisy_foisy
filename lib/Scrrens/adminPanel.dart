import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  _AdminPanelState createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Center(
            child: Text(
              'Admin',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Videos',
                  style: TextStyle(color: Colors.black, fontSize: 23),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0))),
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        padding: MaterialStateProperty.all(EdgeInsets.all(15))),
                    child: Text(
                      'Upload Video',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text('Category',
                    style: TextStyle(
                      fontSize: 18,
                    )),
                Text('Action',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ],
            ),
          ),
          SizedBox(height: 20,),

          VideoUploadCategory(),
          VideoUploadCategory(),
          VideoUploadCategory()
        ]),
      ),
    );
  }
}

class VideoUploadCategory extends StatelessWidget {
  const VideoUploadCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Teaining Video 1'),
        Text('Karate Debutants'),
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                shape:
                MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0))),
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(EdgeInsets.all(10))),
            child: Text(
              'Delete',
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
        ),
      ],
    ),);
  }
}
