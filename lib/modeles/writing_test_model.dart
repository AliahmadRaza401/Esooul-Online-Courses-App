import 'package:flutter/widgets.dart';

class WritingTestModel {
  var name;
  var about;
  var instruction;
  var bar_chart;
    var line_graph;
  var pie_chart;
  var multiple_graphs;
  var process_diagram;
    var table_chart;
  var maps;
  var opinion_essay;
  var discussion_essay;
    var process_solution_essay;
  var advantages_disadvantages_essay;
  var double_question_essay;
  var type;

  WritingTestModel({
    @required this.name,
    @required this.about,
    @required this.instruction,
    @required this.bar_chart,
        @required this.line_graph,
    @required this.pie_chart,
    @required this.multiple_graphs,
    @required this.process_diagram,
        @required this.table_chart,
    @required this.maps,
    @required this.opinion_essay,
    @required this.discussion_essay,
        @required this.process_solution_essay,
    @required this.advantages_disadvantages_essay,
    @required this.double_question_essay,
    @required this.type,
  });
}
