class Item {
  final String name;
  final double price;

  Item(this.name, this.price);
}

class Cart {
  final List<Item> _items = [];

  void addItem(Item item) {
    _items.add(item);
  }

  double get total {
    double sum = 0;
    for (var item in _items) {
      sum += item.price;
    }
    return sum;
  }
}

class Customer {
  final String name;
  final Cart cart = Cart();

  Customer(this.name);
}

class Checkout {
  void process(Customer customer) {
    print("Customer: ${customer.name}");
    print("Total: GHS ${customer.cart.total}");
  }
}

void main() {
  Item bread = Item("Bread", 8.0);
  Item milk = Item("Milk", 12.5);
  Item rice = Item("Rice", 45.0);

  Customer customer = Customer("Ama");
  customer.cart.addItem(bread);
  customer.cart.addItem(milk);
  customer.cart.addItem(rice);

  Checkout checkout = Checkout();
  checkout.process(customer);
}