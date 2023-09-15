import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



///局部状态管理唯一的区别在于不在main方法进行创建ChangeNotifierProvider
void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => _Cart(),
        child: const CartPage(),
      ),
    );
  }
}

class _Cart extends ChangeNotifier{
  final List<String> _items = [];

  List<String> get items => _items;

  void addToCart(String item) {
    _items.add(item);
    notifyListeners();
  }

  void removeFromCart(String item) {
    _items.remove(item);
    notifyListeners();
  }
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<_Cart>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final item = cart.items[index];
                return ListTile(
                  title: Text(item),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      cart.removeFromCart(item);
                    },
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            child: Text('Add Item'),
            onPressed: () {
              cart.addToCart('New Item');
            },
          ),
        ],
      ),
    );
  }
}
