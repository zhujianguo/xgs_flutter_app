import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:xgs_flutter_app/customWidget/EcAppBar.dart';

class FilePickerPage extends StatefulWidget {
  const FilePickerPage({Key key}) : super(key: key);

  @override
  _FilePickerPageState createState() => _FilePickerPageState();
}

class _FilePickerPageState extends State<FilePickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EcAppBar(
        leadingWidget: _leadingWidget(context),
        title: 'Saved Suggestions',
        navigationBarBackgroundColor: Colors.teal,
      ),
      body: ListView(children: [
        TextButton(
          onPressed: () async {
            FilePickerResult result = await FilePicker.platform
                .pickFiles(type: FileType.custom, allowedExtensions: ['mp4'], allowMultiple: true);
            if (result != null) {
              print(result.files.single.name);
              print(result.files.single.extension);
              print(result.files.single.size);
              print(result.files.single.path);
            } else {
              // User canceled the picker
            }
          },
          child: const Text("Open Single File"),
        ),
      ]),
    );
  }

  Widget _leadingWidget(context) {
    return TextButton(
        onPressed: () => {
              // debugDumpRenderTree(), ///flutter调试查看树
              Navigator.pop(context)
            },
        child: const Text(
          '返回',
          style: TextStyle(color: Colors.white),
        ));
  }
}
