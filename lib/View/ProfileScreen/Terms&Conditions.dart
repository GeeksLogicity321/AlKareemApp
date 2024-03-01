import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 2.h,
                ),
                child: Image.asset(
                  'Assets\adress.png',
                  height: 20.h,
                ),
              ),
              Center(
                child: Text(
                  'Office Address: Head Office: LG,\n 65/D ALHafeez Heights Gulberg III Lahore,\nContact No: 042-35760680',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 2.h,
                ),
                child: Image.asset(
                  'Assets/terms-and-conditions.png',
                  height: 20.h,
                ),
              ),
              Text(
                '1. The booking of the Apartment/Shop/Plot will be executed through Booking Application Form & the applicant will get it from registered office on payment of PKR 1,000/-.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '2. One booking form can be used seeking allotment of one Apartment/Shop/Plot only',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '3. All information provided in this booking form by the applicant must be complete and correct. This booking is subject to payment of installments and verification of square footage upon completion of construction works.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '4. The applicant shell be abide by the building by laws framed by the A.K.C. from time to time and will not be entitled to raise any construction in contravention of the building by laws of A.K.C.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '5. The applicant shell pay monthly charges against services rendered by the A.K.C. and the charges/ fee so fixed by A.K.C. shell not challenge in any manner',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '6.	The applicant shells abide by all regulations adopted by the A.K.C. from time to time in respect of terms & conditions in the Housing Scheme.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '7.	The possession of the Apartment/Shop/Plot and final allotment will be issued to the applicant once all the dues cleared and paid the entire amount as per schedule of payment and other charges etc.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '8.	The applicant shell ensures to live in a peaceful manner in the building and not to do any act detrimental to the interest of residence of the building or A.K.C.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '9.	The A.K.C. reserves the right to change the no. of the Apartment/Shop/Plot if any change in the lay-out of plan is required or circumstances demand such change.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '10. Balconies and common areas are part of the covered areas. In case of extra areas (Over and above the allotted area) with any apartment, proportionate extra amount will be changed in addition to the total amount. Likewise in case of lesser area, proportionate will be adjust accordingly.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '11.	In case at the time of possession if the land / area of the Apartment/Shop/Plot are found deficient the applicant shall to receive the amount after for the deficient area as per booking area.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '12.	In case of transfer of Apartment/Shop/Plot, first allottee will be bound to clear all committed dues till that time with A.K.C before the transfer.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '13.	All registration / mutation charges shall be borne by the allottee with any other government tax in vogue.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '14.	Development charges included the charges of internal development for road, footpaths, main water supply and sewerage but does not include the cost / charge of provision of electricity, sui-gas, telephone, mosque, maintenance & transport system etc. provision of utility & service charges shall be obtained later.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '15.	In addition of the dues specified above and any dues payable under applicable laws, the allottee will be liable to pay escalation and other charges at the rates to be specified by A.K.C from time to time to accommodate escalation in the cost of raw material and provision of other amenities / services for urban development.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '16.	This booking is transferrable to subject to prior written approval of A.K.C. Transferring the Apartment/Shop/Plot is not possible until one year has elapsed.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '17.	Any literature or marketing material published by A.K.C is strictly under copyright and reproduction of the whole or any part thereof any forum is prohibited.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '18.	If any term of this Booking Form is held invalid, illegal or unenforceable, the validity, legality and enforceability of the remaining terms shall not in any way be affected or impaired as a result.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '19.	All payments are too made according to the category / size of the Apartment/Shop/Plot, as per the schedule of payment in favour of AL Kareem City (Pvt) Ltd.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '21.	A.K.C accepts payment by cheque, bank drafts or bank transfer only. Payment in any currency other than Pakistan Rupees will be subject to conversion based on Pakistani Bank rates.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '22. All bank instruments must be payable to “AL Kareem City (Pvt) Ltd” A.K.C shall not be responsible for any payment made to any bank/agent/party in any other name.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.w)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '• Bank & Branch:Plaza No 2 Bahria Orchard Phase 2 Lahore.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      '•	Account Title: AL Kareem City (Pvt) Ltd ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      '•	Account No:	4200-1008870547',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      '•	IBAN:	PK68ALFH0542001008870547',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '23.	Installments received after due date will only be accepted with surcharges @2% per month. If the applicant fails to pay 2 consecutive installments as per schedule, written notice will be given at the provided address in order to clear the outstanding defaulted amount within 30 days. Failure to pay the outstanding dues will result in cancellation of booking without any further notice. In the event of cancellation of Apartment/Shop/Plot, the submitted payment will be refunded with 10% of deduction, without any profit, interest or markup, however the processing fee already paid in non-refundable.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '24. All prices are exclusive of tax and the applicant will be liable to pay all applicable taxes as per applicable laws accordingly.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '25.	The Apartment/Shop/Plot once or provisionally allotted or transferred during the scheduled payment, will not be surrendered or cancelled. However, if the applicant is unable to pay the rest of the amount as per given schedule or if the cancellation of apartment is made, the applicant will only be entitled for refund of the amount after deduction of 10% of total booking amount, from the amount so deposited. The refundable amount shall be paid within 180 days of cancellation.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '26.	In case of any dispute between the applicant and AL Kareem City, the dispute will be referred to arbitration by an authorized officer of AL Kareem City, whose decision shall be binding on the parties to the dispute.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '27. These terms shall be governed by the law of Pakistan, with the exclusive jurisdiction of the courts of Lahore, Pakistan.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '28.	A.K.C will reserve the right to allot / sell and cancel the booking of the applicant due to nonpayment of any dues, whatsoever, to any other applicant and the ex-applicant shall have no right to such booking of Apartment/Shop/Plot.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
