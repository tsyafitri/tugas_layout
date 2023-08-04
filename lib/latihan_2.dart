import 'package:flutter/material.dart';

class latihan_2 extends StatelessWidget {
  const latihan_2({super.key});

  @override
  
  Widget build(BuildContext context) {
  Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          // Icon(
          //   Icons.star,
          //   color: Color.fromARGB(255, 204, 111, 173),
          // ),
          // const Text('41'),
          FavoriteWidget()
        ],
      ),
    );
    // #enddocregion titleSection
 
  

  Color color = Theme.of(context).primaryColor;

  Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);
 
    return Scaffold(
        appBar: AppBar(
          title: const Text('page layout'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Column(
          children: [
            Image.network("data:image/jpeg;base64,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"),
            titleSection,
            buttonSection,
            textSection,
          ],
        )
    );
  }

  Column _buildButtonColumn (Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.purpleAccent),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ),
      ],
    );
  }

  }
  class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}
// #enddocregion FavoriteWidget

// #docregion _FavoriteWidgetState, _FavoriteWidgetState-fields, _FavoriteWidgetState-build
class _FavoriteWidgetState extends State<FavoriteWidget> {
  // #enddocregion _FavoriteWidgetState-build
  bool _isFavorited = true;
  int _favoriteCount = 41;

  // #enddocregion _FavoriteWidgetState-fields

  // #docregion _toggleFavorite
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  // #enddocregion _toggleFavorite

  // #docregion _FavoriteWidgetState-build
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
// #docregion _FavoriteWidgetState-fields
}