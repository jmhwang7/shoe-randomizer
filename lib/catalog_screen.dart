import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

_getImage(ImageSource source, BuildContext context) async {
  await ImagePicker.pickImage(source: source);
}

_showImagePickerChoices(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Choose Image Source'),
        actions: <Widget>[
          FlatButton(
            child: Text('Camera'),
            onPressed: () {
              _getImage(ImageSource.camera, context);
            },
          ),
          FlatButton(
            child: Text('Gallery'),
            onPressed: () {
              _getImage(ImageSource.gallery, context);
            },
          ),
        ],
      );
    },
  );
}

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoe Catalog'),
        actions: <Widget>[
          FlatButton(
            child: Text('Add'),
            textColor: Colors.white,
            onPressed: () {
              _showImagePickerChoices(context);
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}
