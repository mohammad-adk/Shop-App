import 'package:flutter/material.dart';

import '../widgets/products_grid.dart';
enum filterOptions {
  Favorites,
  All
}
class ProductOverviewWidget extends StatefulWidget {
  @override
  _ProductOverviewWidgetState createState() => _ProductOverviewWidgetState();
}

class _ProductOverviewWidgetState extends State<ProductOverviewWidget> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (filterOptions selectedValue){
              setState(() {
              if(selectedValue == filterOptions.Favorites){
                _showOnlyFavorites = true;
              }else{
                _showOnlyFavorites = false;
              }

              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(child: Text('Only Favorites'), value: filterOptions.Favorites,),
              PopupMenuItem(child: Text('Show All'), value: filterOptions.All,),
            ],
          )
        ],
      ),
      body: ProductsGrid(_showOnlyFavorites),
    );
  }
}
