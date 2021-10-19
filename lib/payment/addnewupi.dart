import 'package:flutter/material.dart';

class Addnewupi extends StatefulWidget {
  const Addnewupi({Key? key}) : super(key: key);

  @override
  _AddnewupiState createState() => _AddnewupiState();
}

class _AddnewupiState extends State<Addnewupi> {

  final _formKey = GlobalKey<FormState>();

  final controler1 = TextEditingController() ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Add New UPI ID',style: TextStyle(
            color: Colors.black,
          ),),
          centerTitle: true,
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 25,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    cursorColor: Theme.of(context).primaryColor,
                    controller: controler1,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      labelText: 'Enter UPI ID',
                    ),
                    validator: (upi) {
                      if (upi!.isEmpty) {
                        return 'Please enter your UPI ID!';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.check_box,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text('Securely save card details',style: TextStyle(
                      fontSize: 17.5,
                    ),),
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: Container(
                      height: 35,
                      width: double.infinity,
                      child: const Center(
                        child: Text('Verify and Pay'),
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: const BorderRadius.all(Radius.circular(11),),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('2 items | Bill Amount: ₹456 | Delivery Address: Home',style: TextStyle(
                  color: Colors.grey,
                ),),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
