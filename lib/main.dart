//import 'package:flutter/material.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class FavoriteWidget extends StatefulWidget {
//  @override
//  _FavoriteWidgetState createState() => _FavoriteWidgetState();
//}
//
//class _FavoriteWidgetState extends State<FavoriteWidget> {
//  bool _isFavorited = false;
//  int _favoriteCount = 41;
//
//  void _toggleFavorite() {
//    setState(() {
//      if (_isFavorited) {
//        _favoriteCount -= -1;
//        _isFavorited = false;
//      } else {
//        _favoriteCount += 1;
//        _isFavorited = true;
//      }
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Row(
//      mainAxisAlignment: MainAxisAlignment.start,
//      children: <Widget>[
//        new Container(
//          padding: new EdgeInsets.all(0.0),
//          child: new IconButton(
//            icon: (_isFavorited
//                ? new Icon(Icons.star)
//                : new Icon(Icons.star_border)
//            ),
//            color: Colors.red[500],
//            onPressed: _toggleFavorite,
//          ),
//        ),
//        new SizedBox(
//          width: 18.0,
//          child: new Container(
//            child: new Text('$_favoriteCount'),
//          ),
//        )
//      ],
//    );
//  }
//}
//
//class TapboxA extends StatefulWidget {
//  TapboxA({Key key}) : super(key: key);
//
//  @override
//  _TapboxAState createState() => new _TapboxAState();
//}
//
//class _TapboxAState extends State<TapboxA> {
//  bool _active = false;
//
//  void _handleTap() {
//    setState(() {
//      _active = !_active;
//    });
//  }
//
//  Widget build(BuildContext context) {
//    return new GestureDetector(
//      onTap: _handleTap,
//      child: new Container(
//        child: new Center(
//          child: new Text(
//            _active ? 'Active' : 'Inactive',
//            style: new TextStyle(fontSize: 32.0,color: Colors.white),
//          ),
//        ),
//        width: 200.0,
//        height:200.0,
//        decoration: new BoxDecoration(
//          color: _active ? Colors.lightGreen[700] :  Colors.grey[600]
//        ),
//      ),
//    );
//  }
//}
//
//class ParentWidget extends StatefulWidget {
//  @override
//  _ParentWidgetState createState() => new _ParentWidgetState();
//}
//
//class _ParentWidgetState extends State<ParentWidget>{
//  bool _active = false;
//
//  void _handleTapboxChanged(bool newValue) {
//    setState(() {
//      _active = newValue;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      child: new TapboxB(
//        active: _active,
//        onChanged: _handleTapboxChanged,
//      ),
//    );
//  }
//}
//
//
//class TapboxB extends StatelessWidget {
//  TapboxB({Key key,this.active : false,@required this.onChanged}): super(key:key);
//
//  final bool active;
//  final ValueChanged<bool> onChanged;
//
//  void _handleTap() {
//    onChanged(!active);
//  }
//
//  Widget build(BuildContext context) {
//    return new GestureDetector(
//      onTap: _handleTap,
//      child: new Container(
//        child: new Center(
//          child: new Text(
//            active ? 'Aactive' : 'Inactive',
//            style: new TextStyle(fontSize: 32.0,color: Colors.white),
//          ),
//        ),
//        width: 200.0,
//        height: 200.0,
//        decoration: new BoxDecoration(
//          color: active ? Colors.lightGreen[700] : Colors.grey[600],
//        ),
//      ),
//    );
//  }
//}
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//        appBar: AppBar(
//          // Here we take the value from the MyHomePage object that was created by
//          // the App.build method, and use it to set our appbar title.
//          title: Text(widget.title),
//        ),
//        body: new Container(
//            padding: EdgeInsets.only(top: 8.0),
//            child: new Container(
//                child: new Column(
//                  children: <Widget>[
//                    new Container(
//                      height: 80.0,
//                      child: new Row(
//                        children: <Widget>[
//                          new Stack(
//                            alignment: const Alignment(1, -1),
//                            children: <Widget>[
//                              new CircleAvatar(
//                                backgroundImage: new AssetImage(
//                                    'images/pic.jpg'),
//                                radius: 40.0,
//                              ),
//                              new Icon(Icons.call),
//                            ],
//                          ),
//                          new Expanded(
//                              child: new Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                mainAxisSize: MainAxisSize.min,
//                                children: <Widget>[
//                                  new Text(
//                                    '姓名：瑟曦',
//                                    style: new TextStyle(fontSize: 20.0,
//                                        fontWeight: FontWeight.bold),
//                                  ),
//                                  new Text(
//                                    '年龄：21',
//                                    style: new TextStyle(
//                                        fontSize: 18.0, color: Colors.grey),
//                                    textAlign: TextAlign.start,
//                                  ),
//                                ],
//                              )
//
//                          ),
//                        ],
//                      ),
//                    ),
//                    new FavoriteWidget(),
//                    new TapboxA(),
//                    new ParentWidget(),
//                  ],
//                )
//            )
//        )
//    );
//  }
//}



import 'dart:ffi';

import 'package:flutter/material.dart';

Void main() {
  runApp(new MaterialApp(
    title: 'Flutter Tutorial',
    home: new TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null),
        title: new Text('Example title'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null)
        ],
      ),
      body:new ListView(
        children: <Widget>[
          new Counter(),
          new Counter1(),
          new ShoppingList(
            products: <Product>[
              new Product(name: 'Eggs'),
              new Product(name: 'Flour'),
              new Product(name: 'Chocolate chips'),
            ],
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Add',
        child: new Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print('Mybutton was tapped!');
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: new Center(
          child: new Text(
              'Engage',
              style: new TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => new _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  void _increment() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: _increment,
          child: new Text('Increment1'),
        ),
        new Text('Count: $_counter')
      ],
    );
  }
}

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return new Text('Count: $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: onPressed,
      child: new Text('Increment'),
    );
  }
}

class Counter1 extends StatefulWidget {
  @override
  _CounterState1 createState() => new _CounterState1();
}

class _CounterState1 extends State<Counter1> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      children: <Widget>[
        new CounterIncrementor(onPressed: _increment),
        new CounterDisplay(count: _counter,)
      ],
    );
  }
}

class Product {
  const Product({this.name});
  final String name;
}

typedef void CartChangedCallback(Product product,bool inCart);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({Product product,this.inCart,this.onCartChanged})
  : product = product, super(key: new ObjectKey(product));
  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if(!inCart) return null;

    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough
    );
  }

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        onCartChanged(product, !inCart);
      },
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        child: new Text(product.name[0]),
      ),
      title: new Text(product.name, style: _getTextStyle(context),),
    );
  }
}
class ShoppingList extends StatefulWidget {
  ShoppingList({Key key,this.products}) : super(key: key);
  final List<Product> products;

  @override
  _ShoppingListState createState() => new _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _ShopingCart =  new Set<Product>();
  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if(inCart){
        _ShopingCart.add(product);
      }else{
        _ShopingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Shopping List'),
      ),
      body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product) {
          return new ShoppingListItem(
            product: product,
            inCart: _ShopingCart.contains(product),
            onCartChanged: _handleCartChanged,
          );
        }).toList() ,
      )
    );
  }
}
