import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
      home: Home(),
          routes: <String, WidgetBuilder> {
        '/NewPage': (context) => NewPage()
  },
  ));
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSelection = Container(
      padding:  const EdgeInsets.all (10.0),
      child: Row(
        children: <Widget>[
                   Expanded(
             child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('  ', style: TextStyle(fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,fontStyle: FontStyle.italic, fontFamily:'Pacifico')
                ),
              ],
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Basic Info'),
          backgroundColor: Colors.orange,
        ),

        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(30),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/IMG-20191005-WA0010.jpg'),
                ),
              ),
            ),
            titleSelection,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.pink,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.account_circle, size: 60,),
                      title: Text('Rupal Mathur', style: TextStyle(color: Colors.white,fontSize:25)),
                      subtitle: Text('App Developer (Beginner)', style: TextStyle(color: Colors.white,fontSize:15)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.pink,
                elevation: 7,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.alternate_email, size: 35,color: Colors.black,),
                      title: Text('rupalmathur001@gmail.com', style: TextStyle(color: Colors.white,
                          fontSize:18)),
                    ),
                  ],
                ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget> [
                    RaisedButton(
                        child: Text("About"),
                       color: Colors.orange,
                      onPressed: (){
                       Navigator.pushNamed(context, '/NewPage');
                      },
                    )
          ],
        ),
             )
              ]
        )
    );
  }
  }
  class NewPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('About'),
          backgroundColor: Colors.black87,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child:Text(' Presently I am studying at Ajay Kumar Garg Engineering College . I am pursuing B.tech second year with IT. I am a keen learner and deeply interested in app development and web development.'
              ' I wish and anticipate to explore the world of computers and put in the best endeavours to succeed in the arena of computing and networking. ',
            style: TextStyle(fontSize: 25,
                color : Colors.black54),
          ) ,
        ),
      );
    }
  }
  