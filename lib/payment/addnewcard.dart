import 'package:flutter/material.dart';

class AddnewCard extends StatefulWidget {
  const AddnewCard({Key? key}) : super(key: key);

  @override
  _AddnewCardState createState() => _AddnewCardState();
}

class _AddnewCardState extends State<AddnewCard> {

  final _formKey = GlobalKey<FormState>();

  final controler1 = TextEditingController() ;
  final controler2 = TextEditingController() ;
  final controler3 = TextEditingController() ;
  final controler4 = TextEditingController() ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text('Add New Card',style: TextStyle(
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
                    height: 11,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      cursorColor: Theme.of(context).primaryColor,
                      controller: controler1,
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Card Number',
                      ),
                      validator: (cardnumber) {
                        if (cardnumber!.isEmpty) {
                          return 'Please enter Card Number!';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      cursorColor: Theme.of(context).primaryColor,
                      controller: controler2,
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: 'Name on the Card',
                      ),
                      validator: (cardname) {
                        if (cardname!.isEmpty) {
                          return 'Please enter Name on the Card!';
                        }
                        return null;
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            cursorColor: Theme.of(context).primaryColor,
                            controller: controler3,
                            textAlign: TextAlign.left,
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              labelText: 'Valid Through (MM/YY)',
                            ),
                            validator: (cardupto) {
                              if (cardupto!.isEmpty) {
                                return 'Please enter Validation Date!';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            cursorColor: Theme.of(context).primaryColor,
                            controller: controler4,
                            textAlign: TextAlign.left,
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            maxLength: 3,
                            decoration: const InputDecoration(
                              labelText: 'CVV',
                            ),
                            validator: (cvv) {
                              if (cvv!.isEmpty) {
                                return 'Enter CVV!';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
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
                          child: Text('Proceed to Payment'),
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
                    height: 15,
                  ),
                  Image.asset('assets/newcarddetails.png',height: 35,),
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
