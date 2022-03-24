import 'package:flutter/material.dart';

class course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(
        children: [
          Row(
            children: [
              Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: NetworkImage(
                          'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/60347810_2271411166433123_1492348981848571904_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=cdbe9c&_nc_ohc=7_0E8EBmgkoAX-SU7vb&_nc_ht=scontent.fcai21-4.fna&oh=00_AT-iERAJSa0yYeMJrNC27dx2bR4bJD2bjUhIm-ZYDLwJNA&oe=625FA90E'),
                      width: 400,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  )),
            ],
          ),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 0),
              child: Text(
                'EMBEDDED ARM',
                style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              )),
          Container(
              margin: EdgeInsets.symmetric(vertical: 0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('View'),
                color: Colors.white,
              ))
        ],
      )
    ]);
  }
}
