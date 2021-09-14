import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class JazzCashPayment extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);
  // late final String title;
  @override
  _JazzCashPaymentState createState() => _JazzCashPaymentState();
}

class _JazzCashPaymentState extends State<JazzCashPayment> {
  var paymentResult;
  payment() async {
    var digest;
    String dateandtime = DateFormat("yyyyMMddHHmmss").format(DateTime.now());
    String dexpiredate = DateFormat("yyyyMMddHHmmss")
        .format(DateTime.now().add(Duration(days: 1)));
    String tre = "T" + dateandtime;
    String pp_Amount = "2000";
    String pp_BillReference = "billRef";
    String pp_Description = "Description";
    String pp_Language = "EN";
    String pp_MerchantID = "MC23804";
    String pp_Password = "gf43w2w0zy";

    String pp_ReturnURL =
        "https://sandbox.jazzcash.com.pk/ApplicationAPI/API/Payment/DoTransaction";
    String pp_ver = "1.1";
    String pp_TxnCurrency = "PKR";
    String pp_TxnDateTime = dateandtime.toString();
    String pp_TxnExpiryDateTime = dexpiredate.toString();
    String pp_TxnRefNo = tre.toString();
    String pp_TxnType = "MWALLET";
    String ppmpf_1 = "4456733833993";
    String IntegeritySalt = "3f25xc1d35";
    String and = '&';
    String superdata = IntegeritySalt +
        and +
        pp_Amount +
        and +
        pp_BillReference +
        and +
        pp_Description +
        and +
        pp_Language +
        and +
        pp_MerchantID +
        and +
        pp_Password +
        and +
        pp_ReturnURL +
        and +
        pp_TxnCurrency +
        and +
        pp_TxnDateTime +
        and +
        pp_TxnExpiryDateTime +
        and +
        pp_TxnRefNo +
        and +
        pp_TxnType +
        and +
        pp_ver +
        and +
        ppmpf_1;

    var key = utf8.encode(IntegeritySalt);
    var bytes = utf8.encode(superdata);
    var hmacSha256 = new Hmac(sha256, key);
    Digest sha256Result = hmacSha256.convert(bytes);
    var url =
        'https://sandbox.jazzcash.com.pk/ApplicationAPI/API/Payment/DoTransaction';

    var response = await http.post(Uri.parse(url), body: {
      "pp_Version": pp_ver,
      "pp_TxnType": pp_TxnType,
      "pp_Language": pp_Language,
      "pp_MerchantID": pp_MerchantID,
      "pp_Password": pp_Password,
      "pp_TxnRefNo": tre,
      "pp_Amount": pp_Amount,
      "pp_TxnCurrency": pp_TxnCurrency,
      "pp_TxnDateTime": dateandtime,
      "pp_BillReference": pp_BillReference,
      "pp_Description": pp_Description,
      "pp_TxnExpiryDateTime": dexpiredate,
      "pp_ReturnURL": pp_ReturnURL,
      "pp_SecureHash": sha256Result.toString(),
      "ppmpf_1": "4456733833993"
    });

    paymentResult = response.body;
    print('paymentResult: $paymentResult');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Payment"),
        ),
        body: Container(
          child: Center(
            child: RaisedButton(
              onPressed: () {
                payment();
              },
              child: Text("Pay with JazzCash"),
            ),
          ),
        ));
  }
}
