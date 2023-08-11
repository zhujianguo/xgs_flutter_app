import 'package:flutter/material.dart';
import 'package:xgs_flutter_app/customWidget/EcAppBar.dart';

class LayoutDemoPage extends StatelessWidget {

  const LayoutDemoPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print("LayoutDemoPage===========");
    return Scaffold(
      appBar: EcAppBar(
        leadingWidget: _leadingWidget(context),
        title: '布局学习',
        navigationBarBackgroundColor: Colors.teal,
      ),
      body: Center(
        child: ListView(
          children: [
            const Image(
              image:AssetImage('assets/images/lake.jpeg'),
              height: 240.0,
              fit: BoxFit.cover,
            ),
            _titleSection(),
            _myButtonSection(),
            _textSection()
          ],
        ),
      ),
    );
  }

  Widget _titleSection() {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41')
        ],
      ),
    );
  }

  Widget _button(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.lightBlue),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(label,
              style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.lightBlue)),
        )
      ],
    );
  }

  Widget _myButtonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _button(Icons.call, 'CALL'),
        _button(Icons.near_me, 'ROUTE'),
        _button(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _textSection() {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: const Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );
  }

  Widget _leadingWidget(context) {
    return TextButton(
        onPressed: () => {Navigator.pop(context)},
        child: const Text(
          '返回',
          style: TextStyle(color: Colors.white),
        ));
  }
}
