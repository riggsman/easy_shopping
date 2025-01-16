class PaymentService {
  Future<bool> processPayment(double amount) async {
    // Simulate payment processing
    await Future.delayed(const Duration(seconds: 3));
    return true; // Assume payment is successful
  }
}
