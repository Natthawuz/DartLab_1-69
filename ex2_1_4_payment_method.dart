abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  String cardNumber;

  CreditCard(this.cardNumber);

  @override
  void pay(double amount) {
    print('Paid $amount using Credit Card ($cardNumber)');
  }
}

class PromptPay implements PaymentMethod {
  String phoneNumber;

  PromptPay(this.phoneNumber);

  @override
  void pay(double amount) {
    print('Paid $amount using PromptPay ($phoneNumber)');
  }
}

class CashOnDelivery implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid $amount using Cash on Delivery');
  }
}

void main() {
  List<PaymentMethod> methods = [
    CreditCard('1234-5678-9012'),
    PromptPay('081-234-5678'),
    CashOnDelivery()
  ];

  for (var method in methods) {
    method.pay(1500.0);
  }
}