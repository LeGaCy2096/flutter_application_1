class Currency {
  String _name = '';
  double _price = 0;
  double _trend = 0;

  Currency(double price, double trend, String name) {
    _price = price;
    _trend = trend;
    _name = name;
  }

  double get price => _price;
  double get trend => _trend;
}
