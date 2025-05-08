class PRPricingCalculator {
  //
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    
    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  //shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  //calculate tax
  static String calculateTax(
      double productPrice, String location, String state) {
    double taxRate = 0.18; // Default 18% GST (can modify later)
    double taxAmount = productPrice * taxRate;

    if (location == state) {
      // Within the same state (CGST + SGST)
      double cgst = taxAmount / 2;
      double sgst = taxAmount / 2;
      return "CGST: ₹${cgst.toStringAsFixed(2)}, SGST: ₹${sgst.toStringAsFixed(2)}";
    } else {
      // Different state (Interstate IGST)
      return "IGST: ₹${taxAmount.toStringAsFixed(2)}";
    }
  }

  static double getTaxRateForLocation(String location) {
    //lukup the tax rate for the given location from a tax rate database or api
    //return the appropriate tax rate
    return 0.10;
  }

  static double getShippingCost(String location) {
    //lukup  the shipping cost for the given location using a shipping rate api
    //calc the shipping cost based on variuos factors like distance,weightetc
    return 5.00; //example shippingcost
  }

  //sum all cart values and return total price amount
}
