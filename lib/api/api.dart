import 'package:esooul/config/config.dart';
import 'package:flutter/cupertino.dart';

//Authentication Api
const String signInApi = BaseUrl + "/api/v1/auth/login";
const String signUpApi = BaseUrl + "/api/v1/auth/register";
const String otpVerificationApi = BaseUrl + "/api/v1/auth/verify";
const String otpResendApi = BaseUrl + "/api/v1/auth/resend-otp";
const String logoutApi = BaseUrl + "/api/v1/auth/logout";

//Home
const String boardAreasApi = BaseUrl + "/api/v1/board-areas";
educationalBoardsApi(boardareaId) {
  return BaseUrl + "/api/v1/educational-boards/$boardareaId";
}

gradesApi(educationalBoardsId) {
  return BaseUrl + "/api/v1/grads/$educationalBoardsId";
}

topicApi(courseId) {
  return BaseUrl + "/api/v1/topics/$courseId";
}

// Papers
const String papersApi = BaseUrl + "/api/v1/papers";
const String categoryApi = BaseUrl + "/api/v1/category";
gradeCourses(gradeID) {
  return BaseUrl + "/api/v1/grade-courses/$gradeID";
}

categoryCourses(categoreyID) {
  return BaseUrl + "/api/v1/category-courses/$categoreyID";
}

String pastPaperListingApi = BaseUrl + "/api/v1/past-papers-listing";
String pastObjectiveApi = BaseUrl + "/api/v1/past-paper-objective-questions";
String pastSubjectiveApi = BaseUrl + "/api/v1/past-paper-subjective-questions";
String customObjectiveApi =
    BaseUrl + "/api/v1/custom-paper-objective-questions";
String customSubjectiveApi =
    BaseUrl + "/api/v1/custom-paper-subjective-questions";
pastPaperYearsApi(course_id) {
  return BaseUrl + "/api/v1/past-papers-years/$course_id";
}

topicsApi(course_id) {
  return BaseUrl + "/api/v1/topics/$course_id";
}

String coursesApi = BaseUrl + '/api/v1/courses/';
String topicPayment = BaseUrl + '/api/v1/topic-payement';
String paperPayment = BaseUrl + '/api/v1/paper-payement';

// IETLTS Section

String listeningTestApi = IeltsBaseUrl + '/api/listening-tests';
String writingTestApi = IeltsBaseUrl + '/api/writting-test';

