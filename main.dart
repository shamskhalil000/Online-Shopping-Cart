class Product {
  String productName;
  double price;
  int stock;

  // Constructor
  Product(this.productName, this.price, this.stock);

  // Getters
  String get name => productName;
  double get itsprice => price;
  int get itsstock => stock;

  // setters
  set itsstock(int newstock) {
    if (newstock >= 0) {
      stock = newstock;
    } else {
      print("stock can not be negative !!!");
    }
  }

  set itsprice(double newprice) {
    if (newprice > 0) {
      price = newprice;
    } else {
      print('price must be positive');
    }
  }

  void sellProduct(int quantity) {
    if (quantity > 0 && quantity <= stock) {
      stock -= quantity;
      print('$quantity unit(s) of "$productName" sold.');
    } else {
      print('Insufficient stock to sell $quantity unit(s).');
    }
  }

  restock(int quantity) {
    if (quantity > 0) {
      stock += quantity;
      print('$quantity unit(s) of "$productName" added to stock.');
    } else {
      print('Invalid quantity to restock.');
    }
  }

  void PrintDetails() {
    print('Name of product is$productName');
    print('Price of product is $price');
    print('The stock of this product is $stock');
  }
}

void main(List<String> args) {
  Product laptop = Product('Laptop', 1200.0, 10);
  laptop.PrintDetails();
  laptop.sellProduct(3);
  laptop.restock(5);
  laptop.price = 1100.0; // Update price using setter
  laptop.PrintDetails();
}
