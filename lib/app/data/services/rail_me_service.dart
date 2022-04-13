import 'dart:convert';
import 'dart:io';
import 'package:rail_me/app/data/Model/rail_me_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:rail_me/app/data/shared_data.dart';

String? _id;
const String registerUrl =
    'https://fathomless-beyond-10355.herokuapp.com/api/v1/registerUser';
const String loginUrl =
    'https://fathomless-beyond-10355.herokuapp.com/api/v1/loginUser';
const String bookTicketUrl =
    'https://fathomless-beyond-10355.herokuapp.com/api/v1/booking';
const String bookedTicketUrl =
    'https://fathomless-beyond-10355.herokuapp.com/api/v1/getAllServices';
String editBookingTimeUrl =
    'https://fathomless-beyond-10355.herokuapp.com/api/v1/updateTrainTime/$_id';
String deleteBookingUrl =
    'https://fathomless-beyond-10355.herokuapp.com/api/v1/deleteBooking/:$_id';

class NewUserService {
  static final Dio dio = Dio();
  static Future<String?> signUpUser(NewUserClass newUserModel) async {
    try {
      var response = await dio.post(registerUrl, data: newUserModel.toJson());
      if (response.statusCode == 201) {
        print(response.data);
        return response.data;
      } else {
        return 'unable to get data';
      }
    } catch (e) {
      if (e is SocketException) {
        return 'No internet connection';
      } else {
        return 'Unable to connect to server';
      }
    }
  }
}

class LoginUserService {
  static final Dio dio = Dio();
  static Future<Result> loginUser(UserLogin loginUserModel) async {
    try {
      var response = await dio.post(loginUrl, data: loginUserModel.toJson());
      if (response.statusCode == 200) {
        var bearerToken = response.data['token'];
        print(bearerToken);
        SharedDataRepository.instance.setToken(bearerToken);
        print(response);
        return Success(response: response.data);
      } else {
        return Failure(error: 'Unable to log in');
      }
    } catch (e) {
      print(e);
      if (e is SocketException) {
        return Failure(error: 'No internet connection');
      } else {
        return Failure(error: 'Unable to connect to server');
      }
    }
  }
}

class BookTicketService {
  static Future<Result> bookTicket(Ticket bookTicketModel) async {
    String? _token = await SharedDataRepository.instance.getToken();
    print(_token);
    final newTicketUrl = Uri.parse(bookTicketUrl);
    try {
      print(bookTicketModel.toJson());
      print("jsonEncode " + jsonEncode(bookTicketModel.toJson()));
      var response = await http.post(newTicketUrl,
          body: jsonEncode(bookTicketModel.toJson()),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $_token"
            // HttpHeaders.authorizationHeader: 'Bearer $_token',
          });
      if (response.statusCode == 201) {
        print(response.body);
        return Success(response: response.body);
      } else {
        print(response.statusCode);
        return Failure(error: 'Unable to book ticket');
      }
    } catch (e) {
      print(e);
      if (e is SocketException) {
        return Failure(error: 'No internet connection');
      } else {
        return Failure(error: 'Unable to connect to server');
      }
    }
  }
}

abstract class Result {}

class Success extends Result {
  final dynamic response;
  Success({required this.response});
}

class Failure extends Result {
  final String error;
  Failure({required this.error});
}
