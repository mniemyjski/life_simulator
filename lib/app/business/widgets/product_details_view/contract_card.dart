import 'package:flutter/material.dart';
import 'package:richeable/app/business/models/contract/contract_model.dart';

import '../../../../widgets/widgets.dart';

class ContractCard extends StatelessWidget {
  final Contract contract;
  const ContractCard({Key? key, required this.contract}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWithTitle(title: 'Company', text: contract.companyName),
          CustomTextWithTitle(title: 'Amount', text: contract.amount.toString()),
          CustomTextWithTitle(title: 'Price per unit', text: contract.pricePerUnit.toString()),
          CustomTextWithTitle(title: 'Total Price', text: contract.getTotalPrice().toString()),
          CustomTextWithTitle(title: 'Duration Offer', text: contract.duration.toString()),
        ],
      ),
    ));
  }
}
