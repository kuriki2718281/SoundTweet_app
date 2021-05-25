import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profileedit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Center(
        child: ProfileSelectImage(),
      ),
    );
  }
}

class ProfileSelectImage extends StatefulWidget {
  @override
  _ProfileSelectImage createState() => _ProfileSelectImage();
}

class _ProfileSelectImage extends State<ProfileSelectImage> {
  File _image;
  final picker = ImagePicker();

  // 画像の読み込み
  Future _getImage() async {
    //final pickedFile = await picker.getImage(source: ImageSource.camera);//カメラ
    final pickedFile =
        await picker.getImage(source: ImageSource.gallery); //アルバム

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              width: 150,
              height: 150,
              margin: const EdgeInsets.only(top: 25),
              child: _displaySelectionImageOrGrayImage()),
          Container(
            child: Align(),
          ),
          Container(
            width: 144,
            height: 50,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: const Color(0xfffa4269),
              border: Border.all(
                width: 2,
                color: const Color(0xff000000),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: FlatButton(
              onPressed: () => _getImage(),
              child: const Text(
                'Change Profile Photo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  height: 1.2,
                ),
              ),
            ),
          ),
          Container(child: _displayInSelectedImage()),
          Container(
            child: Align(
                child: TextField(
              decoration: InputDecoration(hintText: ' Name'),
            )),
          ),
          Container(
            child: Align(
                child: TextField(
              decoration: InputDecoration(hintText: ' UserName'),
            )),
          ),
          Container(
            child: Align(
                child: TextField(
              decoration: InputDecoration(hintText: ' Bio'),
            )),
          ),
          Container(
            child: Align(
                child: TextField(
              decoration: InputDecoration(hintText: ' Link'),
            )),
          ),
        ],
      ),
    );
  }

  Widget _displaySelectionImageOrGrayImage() {
    if (_image == null) {
      return Container(
        decoration: BoxDecoration(
          color: const Color(0xffdfdfdf),
          border: Border.all(
            width: 2,
            color: const Color(0xff000000),
          ),
          borderRadius: BorderRadius.circular(75),
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: const Color(0xff000000),
          ),
          borderRadius: BorderRadius.circular(75),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(75),
          child: Image.file(
            _image,
            fit: BoxFit.fill,
          ),
        ),
      );
    }
  }

  Widget _displayInSelectedImage() {
    if (_image == null) {
      return Column();
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20, right: 20),
              child: InkWell(
                child: Image.asset(
                  'assets/images/ic_send.png',
                ),
              ),
            ),
          ),
        ],
      );
    }
  }
}

// _image == null ? Text('No image selected.') : Image.file(_image),
      // Center(
      //   child: Align(
      //     alignment: Alignment(0, 0),
      //     child: RaisedButton(
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(7),
      //       ),
      //       onPressed: () => _getImage(),
      //       child: Text('Change Profile Photo'),
      //     ),
      //   ),
      // )

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _getImage,
      //   tooltip: 'Pick',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.