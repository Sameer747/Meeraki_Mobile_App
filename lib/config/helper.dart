class Helper {
  static var baseUrl2 = "https://www.meeraki.com/";
  static var public = "public/";
  static var v1 = "api/v1/";
  static var v2 = "api/v2/";

  static var finalBaseURL1 = baseUrl2 + v1;
  static var finalBaseURL2 = baseUrl2 + v2;

  //---------FedEx--------------

  static var fedExUrl = "https://apis-sandbox.fedex.com";
  static const productDetailsUrl = "https://meeraki.com/api/v2/products/";
  static var fedExUrlClientId = 'l7db74c811b00c4c5ead9666e779534a5b';
  static var fedExUrlClientSecret = 'b2e495d7fdb44a70b54e890f22c417d5';
  static var fedExAccountNumber = 740561073;
  static var fedExPostalCode = 11220;
  static var fedExShiperAddress = {
    "address": {
      "streetLines": ["182 BAY RIDGE AVE"],
      "city": "BROOKLYN",
      "stateOrProvinceCode": "NY",
      "postalCode": "11220",
      "countryCode": "US"
    }
  };

  //------------ PayPal ----------------

  static var payPalURL = "https://api-m.paypal.com";
  static var payPalReturnURL = "https://return_url";
  static var payPalCancelURL = "https://cancel_url";
}
