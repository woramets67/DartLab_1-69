abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid $amount baht by Credit Card');
  }
}

class PromptPay implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid $amount baht by PromptPay');
  }
}

class CashOnDelivery implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid $amount baht by Cash on Delivery');
  }
}

void main() {
  List<PaymentMethod> methods = [
    CreditCard(),
    PromptPay(),
    CashOnDelivery(),
  ];

  for (var m in methods) {
    m.pay(500);
  }
}
