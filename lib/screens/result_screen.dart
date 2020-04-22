import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:provider/provider.dart';
import 'package:vote/state/vote.dart';
import 'package:vote/models/vote.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container( 
      child: createChart(context),
    );
  }

  Widget createChart(BuildContext context){
    return charts.BarChart(
      retrieveVoteResult(context),
      animate: true,
    );
  }
  List<charts.Series<VoteData, String>>  retrieveVoteResult(){};
}

class VoteData {
  final String option;
  final int total;

  VoteData(this.option, this.total);
}