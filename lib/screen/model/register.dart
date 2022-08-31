class OurRegister {
  final String Registration;
  final String Brand;
  final String Colors;

  OurRegister({
    required this.Registration,
    required this.Brand,
    required this.Colors,
  });

  Map<String, dynamic> toMap() {
    return {
      "Registration": this.Registration,
      "Brand": this.Brand,
      "Colors": this.Colors,
    };
  }
}
