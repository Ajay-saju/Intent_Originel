import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/dashboard_information_card.dart';
import 'package:intent_original/View/Screens/Widgets/revenue_chart_widget.dart';
import 'package:intent_original/View/Screens/Widgets/user_tab_app_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class InterviewerDashboardScreen extends StatefulWidget {
  const InterviewerDashboardScreen({Key? key}) : super(key: key);

  @override
  State<InterviewerDashboardScreen> createState() =>
      _InterviewerDashboardScreenState();
}

class _InterviewerDashboardScreenState
    extends State<InterviewerDashboardScreen> {


      
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
      TooltipBehavior tooltip = TooltipBehavior();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 7.h),
        child: const UserTabAppBar(title: 'Dashboard'),
      ),
      body: ListView(
         
        children: [
          h4,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                DashboardInformationCard(
                  firstTitle: 'Requiest',
                  secondTitle: '13',
                ),
                DashboardInformationCard(
                    firstTitle: 'Revenue', secondTitle: '₹ 15,000'),
                DashboardInformationCard(
                    firstTitle: 'Rating', secondTitle: '4.1/5'),
              ],
            ),
          ),
          
          SizedBox(
            // color: cBlack,
            height: 25.h,
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                    pieTouchData: PieTouchData(
                        touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    }),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 40,
                    sections: showingSections()),
              ),
            ),
            
          ),
          h2,
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(height: 2.5.h,width: 2.5.h,color:const Color(0xff0293ee) ,),w1,Text('Completed Interviews',style: GoogleFonts.spaceGrotesk(fontSize:10.5.sp),),w1,
              Container(height: 2.5.h,width: 2.5.h,color:const  Color(0xfff8b250) ,),w1,Text('Upcoming Interviews',style: GoogleFonts.spaceGrotesk(fontSize:10.5.sp),)
            ],),
          ),
          h4,
          // Container(child: RevenueChatWidget()),
          LimitedBox(child: SfCartesianChart(primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
          tooltipBehavior:tooltip,
          series: <ChartSeries<RevenueData,String>>[
            ColumnSeries<RevenueData,String>(dataSource: <RevenueData>[
              RevenueData('Jan', 35),
                  RevenueData('Feb', 28),
                  RevenueData('Mar', 34),
                  RevenueData('Apr', 32),
                  RevenueData('May', 40)
            ],
            xValueMapper: (RevenueData sales, _) => sales.year,
                yValueMapper: (RevenueData sales, _) => sales.sales,
                color: Color.fromARGB(255, 123, 179, 225)
            )
          ],))
        
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 40,
            title: '60%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 30,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }
}
  class RevenueData {
  RevenueData(this.year, this.sales);
  final String year;
  final double sales;
}
