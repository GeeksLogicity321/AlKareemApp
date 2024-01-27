import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestate/ViewModel/AuthProvider.dart';
import 'package:sizer/sizer.dart';
import '../ViewModel/BottomnavProvider.dart';
import '../ViewModel/PenaltyProvider.dart';
import '../ViewModel/UserPaymentProvider.dart';
import '../Widgets/InstallmentsTile.dart';
import '../Widgets/NoPlotWidget.dart';
import '../Widgets/PageViewWidget.dart';
import '../Widgets/PenaltyTileWidget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Consumer<LoginProvider>(builder: (_, provider, __) {
        //     return provider.userObject.data!.profilePic == null
        //         ? Icon(Icons.person)
        //         : ClipOval(
        //             child: Image.network(
        //             provider.userObject.data!.profilePic!,
        //             height: 6.w,
        //             width: 6.w,
        //             fit: BoxFit.cover,
        //           ));
        //   }),
        // ),
        title: Text(
          'Welcome to Al Kareem City',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        // actions: [
        //   Badge(
        //       child: Icon(
        //     Icons.notifications_none,
        //   )),
        //   SizedBox(
        //     width: 2.w,
        //   )
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => context.read<TabControllerProvider>().changeTab(3),
              child: Padding(
                padding: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Consumer<LoginProvider>(builder: (_, provider, __) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello ${provider.userObject.data!.name}!',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '${provider.userObject.data!.email}',
                            style:
                                TextStyle(color: Colors.green, fontSize: 10.sp),
                          ),
                          Text(
                            'Welcome to\nAl Kareem City Mobile App',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      );
                    }),
                    Consumer<LoginProvider>(builder: (_, provider, __) {
                      return provider.userObject.data!.profilePic == null
                          ? Icon(Icons.person)
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(2.w),
                              child: Image.network(
                                provider.userObject.data!.profilePic!,
                                height: 15.w,
                                width: 15.w,
                                fit: BoxFit.cover,
                              ),
                            );
                    }),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.w, bottom: 2.h),
              child: Text(
                'Plots you own',
                style: TextStyle(color: Colors.black, fontSize: 14.sp),
              ),
            ),
            context.read<LoginProvider>().userObject.data!.planId!.isEmpty
                ? NoPlotsWidget()
                : SizedBox(
                    height: 30.h,
                    child: Consumer<LoginProvider>(builder: (_, provider, __) {
                      return PageView.builder(
                          padEnds: provider.userObject.data!.planId!.length == 1
                              ? true
                              : false,
                          controller: PageController(viewportFraction: 0.6),
                          itemCount: provider.userObject.data!.planId!.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                              child: PageViewWidget(
                                planIdObject:
                                    provider.userObject.data!.planId![index],
                              ),
                            );
                          });
                    }),
                  ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              child: Text(
                'Your Current/Upcoming Installments',
                style: TextStyle(color: Colors.black, fontSize: 14.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 4.w, right: 4.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.w)),
              child: Consumer<UserPaymentProvider>(builder: (_, provider, __) {
                if (provider.isLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (provider.isLoading == false &&
                    provider.paymentsList!.isEmpty) {
                  return Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 2.h),
                      child: Image.asset('Assets/Group 4031.png'),
                    ),
                  );
                } else {
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: provider.paymentsList!.length,
                      itemBuilder: (context, index) {
                        final currentPlan = provider.paymentsList![index];
                        return currentPlan.firstPendingPayment == null
                            ? InactiveInstallmentsTile(
                                message: currentPlan.message ?? '',
                                plotNumber: currentPlan.plotNumber ?? '',
                              )
                            : InstallmentsTile(
                                planId: currentPlan.sId!,
                                dueDate:
                                    currentPlan.firstPendingPayment!.dueDate!,
                                plotNumber: currentPlan.plotNumber ?? '',
                                installmentNumber: currentPlan
                                        .firstPendingPayment!
                                        .installmentNumber ??
                                    0,
                                amount:
                                    currentPlan.firstPendingPayment!.amount ??
                                        0,
                              );
                      });
                }
              }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              child: Text(
                'Your Penalties',
                style: TextStyle(color: Colors.black, fontSize: 14.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 4.w, right: 4.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.w),
              ),
              child: Consumer<UserPenaltyProvider>(builder: (_, provider, __) {
                if (provider.isLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (provider.penaltyList!.isEmpty) {
                  return Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 2.h),
                      child: Image.asset('Assets/Group 4031.png'),
                    ),
                  );
                } else {
                  return ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: provider.penaltyList!.length,
                      itemBuilder: (context, index) {
                        final currentPanalty = provider.penaltyList![index];
                        return PenaltyTileWidget(
                          status: currentPanalty.paid!,
                          reason: currentPanalty.reason!,
                          amount: currentPanalty.amount!,
                          dueDate: currentPanalty.date!,
                          penaltyId: currentPanalty.sId!,
                        );
                      });
                }
              }),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
