import 'package:esooul/Screens/Authentication/login/login_provider.dart';
import 'package:esooul/Screens/Authentication/otp_verification/otp_verification_provider.dart';
import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/Home/home_provider.dart';
import 'package:esooul/Screens/boards_list/board_list_provider.dart';
import 'package:esooul/Screens/grade_list/grade_list_provider.dart';
import 'package:esooul/Screens/paper_categorey/paper_categorey_provider.dart';
import 'package:esooul/Screens/past_objective/past_objective_provider.dart';
import 'package:esooul/Screens/past_subjective_paper/past_subjective_provider.dart';
import 'package:esooul/Screens/subject_list/subject_list_provider.dart';
import 'package:esooul/Screens/yearly_papers/yearly_paper_provider.dart';
import 'package:provider/provider.dart';

final multiProvider = [
  ChangeNotifierProvider<LoginProvider>(
    create: (_) => LoginProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<SignUpProvider>(
    create: (_) => SignUpProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<OtpVerificationProvider>(
    create: (_) => OtpVerificationProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<HomeProvider>(
    create: (_) => HomeProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<BoardListProvider>(
    create: (_) => BoardListProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<GradeListProvider>(
    create: (_) => GradeListProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<PaperCategoreyProvider>(
    create: (_) => PaperCategoreyProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<SubjectListProvider>(
    create: (_) => SubjectListProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<YearlyPaperProvider>(
    create: (_) => YearlyPaperProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<PastObjectiveProvider>(
    create: (_) => PastObjectiveProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<PastSubjectiveProvider>(
    create: (_) => PastSubjectiveProvider(),
    lazy: true,
  ),
];
