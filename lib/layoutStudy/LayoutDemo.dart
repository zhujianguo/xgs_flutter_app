import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xgs_flutter_app/uiElement/EcAppBar.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EcAppBar(title: '布局', navigationBarBackgroundColor: Colors.teal),
      body: Center(
        child: ListView(
          children: [
           //  _appBar(context),
            Image.asset(
              'assets/images/lake.jpeg',
              height: 240.0,
              width: 600,
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
      padding: EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
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
          Text('41')
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
          margin: EdgeInsets.only(top: 8.0),
          child: Text(label,
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.lightBlue)),
        )
      ],
    );
  }

  Widget _myButtonSection() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _button(Icons.call, 'CALL'),
          _button(Icons.near_me, 'ROUTE'),
          _button(Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Widget _textSection() {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );
  }

  Widget _appBar(context) {
    return Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.white,
            ),
          ),
        ],
    );
  }
}
