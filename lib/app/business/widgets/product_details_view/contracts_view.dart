import 'package:flutter/material.dart';
import 'package:richeable/app/business/models/contract/contract_model.dart';
import 'package:richeable/app/business/widgets/product_details_view/contract_card.dart';
import 'package:richeable/widgets/custom_card.dart';

class ContractsView extends StatelessWidget {
  const ContractsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: CustomCard(
                      child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text('Approved')),
              ))),
              Expanded(
                  child: CustomCard(
                      child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text('Offers')),
              ))),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: 0,
                        itemBuilder: (context, index) {
                          return CustomCard(
                              child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Center(child: Text('Propouse')),
                          ));
                        })),
                Expanded(
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return ContractCard(
                              contract: Contract(
                            businessId: 234,
                            productId: 234,
                            companyName: 'Test',
                            amount: 100,
                            pricePerUnit: 1,
                            totalPrice: 1,
                            duration: 12,
                            dateCre: DateTime.now(),
                          ));
                        })),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
