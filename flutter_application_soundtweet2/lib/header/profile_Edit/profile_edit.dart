import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import '../header_profile.dart';

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
  ProfileSelectImage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProfileSelectImage createState() => _ProfileSelectImage();
}

// class ViewAToBArguments {
//   final String name;
//   final String username;
//   final String bio;
//   final String link;

//   ViewAToBArguments(this.name, this.username, this.bio, this.link);
// }

// class ProfileValue {
//   ProfileValue({this.name, this.username, this.bio, this.link});
//   final String name;
//   final String username;
//   final String bio;
//   final String link;
// }

class _ProfileSelectImage extends State<ProfileSelectImage> {
  File _image;
  final picker = ImagePicker();
  final _nameFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();
  String _text = '';
  String name;
  String username;
  String bio;
  String link;
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
              margin: const EdgeInsets.only(top: 20),
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
          Form(
            key: _form,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: ' Name'),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your Name.';
                    }
                    return null;
                  },
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_nameFocusNode);
                  },
                  onSaved: (value) {
                    name = value;
                  },
                ),
                // TextFormField(
                //   decoration: InputDecoration(labelText: ' UserName'),
                //   textInputAction: TextInputAction.next,
                //   validator: (value) {
                //     if (value.isEmpty) {
                //       return 'Please enter your UserName.';
                //     }
                //     return null;
                //   },
                //   // onFieldSubmitted: (_) {
                //   //   FocusScope.of(context).requestFocus(_nameFocusNode);
                //   // },
                //   onSaved: (value) {
                //     username = value;
                //   },
                // ),
                TextFormField(
                  decoration: InputDecoration(labelText: ' Bio'),
                  textInputAction: TextInputAction.next,
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return 'Please enter your Bio.';
                  //   }
                  //   return null;
                  // },
                  // onFieldSubmitted: (_) {
                  //   FocusScope.of(context).requestFocus(_nameFocusNode);
                  // },
                  onSaved: (value) {
                    bio = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: ' Link'),
                  textInputAction: TextInputAction.next,
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return 'Please enter your Link.';
                  //   }
                  //   return null;
                  // },
                  // onFieldSubmitted: (_) {
                  //   FocusScope.of(context).requestFocus(_nameFocusNode);
                  // },
                  onSaved: (value) {
                    link = value;
                  },
                ),
                RaisedButton(
                    child: Text('Done'),
                    color: Color(0xfffa4269),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    onPressed: () {
                      _form.currentState.save();
                      if (!_form.currentState.validate()) {
                        return;
                      }
                      Navigator.of(context).pop(
                        name,
                      );
                      // Navigator.pushReplacementNamed(context, '/next_path',
                      //     arguments:
                      //         ViewAToBArguments(name, username, bio, link));
                    }),
              ],
            ),
          ),
          // Container(
          //   child: Align(
          //       child: TextField(
          //     onChanged: (value) {
          //       print(value);
          //     },
          //     decoration: InputDecoration(hintText: ' Name'),
          //   )
          //   ),
          // ),
          // Container(
          //   child: Align(
          //       child: TextField(
          //     decoration: InputDecoration(hintText: ' UserName'),
          //   )),
          // ),
          // Container(
          //   child: Align(
          //       child: TextField(
          //     decoration: InputDecoration(hintText: ' Bio'),
          //   )),
          // ),
          // Container(
          //   child: Align(
          //       child: TextField(
          //     decoration: InputDecoration(hintText: ' Link'),
          //   )),
          // ),
          // Container(
          //   child: Align(
          //     child: RaisedButton(
          //       child: Text('Done'),
          //       color: Color(0xfffa4269),
          //       shape: OutlineInputBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(10))),
          //       onPressed: () {},
          //     ),
          //   ),
          // ),
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