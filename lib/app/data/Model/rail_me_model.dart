
import 'package:intl/intl.dart';

class NewUser {
    NewUser({
        required this.newUser,
        required this.token,
    });

    NewUserClass? newUser;
    String? token;

    factory NewUser.fromJson(Map<String, dynamic> json) => NewUser(
        newUser: json["newUser"] == null ? null : NewUserClass.fromJson(json["newUser"]),
        token: json["token"] == null ? null : json["token"],
    );

    Map<String, dynamic> toJson() => {
        "newUser": newUser == null ? null : newUser!.toJson(),
        "token": token == null ? null : token,
    };
}

 class NewUserClass {
    NewUserClass({
        required this.firstName,
        required this.lastName,
        required this.phoneNumber,
        required this.email,
        required this.password,
         this.role,
        this.id,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    String firstName;
    String lastName;
    String phoneNumber;
    String email;
    String password;
    String? role;
    String? id;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    factory NewUserClass.fromJson(Map<String, dynamic> json) => NewUserClass(
        firstName: json["firstName"] == null ? null : json["firstName"],
        lastName: json["lastName"] == null ? null : json["lastName"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        email: json["email"] == null ? null : json["email"],
        password: json["password"] == null ? null : json["password"],
        role: json["role"] == null ? null : json["role"],
        id: json["_id"] == null ? null : json["_id"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"] == null ? null : json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "firstName": firstName == null ? null : firstName,
        "lastName": lastName == null ? null : lastName,
        "phoneNumber": phoneNumber == null ? null : phoneNumber,
        "email": email == null ? null : email,
        "password": password == null ? null : password,
        "role": role == null ? null : role,
        "_id": id == null ? null : id,
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "__v": v == null ? null : v,
    };
}

class UserLogin {
    UserLogin({
        required this.email,
        required this.password,
    });

    String email;
    String password;

    factory UserLogin.fromJson(Map<String, dynamic> json) => UserLogin(
        email: json["email"] == null ? null : json["email"],
        password: json["password"] == null ? null : json["password"],
    );

    Map<String, dynamic> toJson() => {
        "email": email == null ? null : email,
        "password": password == null ? null : password,
    };
}




class Ticket {
    Ticket({
        required this.fullName,
        required this.address,
        required this.destination,
        required this.reservation,
        required this.time,
        required this.date,
        
    });

    String? fullName;
    String? address;
    String? destination;
    String? reservation;
    String? time;
    DateTime? date;
    

    factory Ticket.fromJson(Map<String, dynamic> json) => Ticket(
        fullName: json["fullName"] == null ? null : json["fullName"],
        address: json["address"] == null ? null : json["address"],
        destination: json["destination"] == null ? null : json["destination"],
        reservation: json["reservation"] == null ? null : json["reservation"],
        time: json["time"] == null ? null : json["time"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        
    );

    Map<String, dynamic> toJson() => {
        "fullName": fullName == null ? null : fullName,
        "address": address == null ? null : address,
        "destination": destination == null ? null : destination,
        "reservation": reservation == null ? null : reservation,
        "time": time == null ? null : time,
        "date": date != null ? '${date!.year}-${date!.month}-${date!.day}' : null,
    };
}

class EditTicket {
    EditTicket({
        required this.success,
        required this.updateTrainTime,
    });

    bool success;
    UpdateTrainTime? updateTrainTime;

    factory EditTicket.fromJson(Map<String, dynamic> json) => EditTicket(
        success: json["success"] == null ? null : json["success"],
        updateTrainTime: json["updateTrainTime"] == null ? null : UpdateTrainTime.fromJson(json["updateTrainTime"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "updateTrainTime": updateTrainTime == null ? null : updateTrainTime!.toJson(),
    };
}

class UpdateTrainTime {
    UpdateTrainTime({
        required this.id,
        required this.fullName,
        required this.address,
        required this.destination,
        required this.reservation,
        required this.time,
        required this.date,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
    });

    String? id;
    String? fullName;
    String? address;
    String? destination;
    String? reservation;
    String? time;
    DateTime? date;
    DateTime? createdAt;
    DateTime? updatedAt;
    int v;

    factory UpdateTrainTime.fromJson(Map<String, dynamic> json) => UpdateTrainTime(
        id: json["_id"] == null ? null : json["_id"],
        fullName: json["fullName"] == null ? null : json["fullName"],
        address: json["address"] == null ? null : json["address"],
        destination: json["destination"] == null ? null : json["destination"],
        reservation: json["reservation"] == null ? null : json["reservation"],
        time: json["time"] == null ? null : json["time"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"] == null ? null : json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "fullName": fullName == null ? null : fullName,
        "address": address == null ? null : address,
        "destination": destination == null ? null : destination,
        "reservation": reservation == null ? null : reservation,
        "time": time == null ? null : time,
        "date": date == null ? null : date!.toIso8601String(),
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "__v": v == null ? null : v,
    };
}


class DeleteBooking {
    DeleteBooking({
        required this.message,
        required this.deleteBooking,
    });

    String? message;
    DeleteBookingClass? deleteBooking;

    factory DeleteBooking.fromJson(Map<String, dynamic> json) => DeleteBooking(
        message: json["message"] == null ? null : json["message"],
        deleteBooking: json["deleteBooking"] == null ? null : DeleteBookingClass.fromJson(json["deleteBooking"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message == null ? null : message,
        "deleteBooking": deleteBooking == null ? null : deleteBooking!.toJson(),
    };
}

class DeleteBookingClass {
    DeleteBookingClass({
        required this.id,
        required this.fullName,
        required this.address,
        required this.destination,
        required this.reservation,
        required this.time,
        required this.date,
    
    });

    String? id;
    String? fullName;
    String? address;
    String? destination;
    String? reservation;
    String? time;
    DateTime? date;
  

    factory DeleteBookingClass.fromJson(Map<String, dynamic> json) => DeleteBookingClass(
        id: json["_id"] == null ? null : json["_id"],
        fullName: json["fullName"] == null ? null : json["fullName"],
        address: json["address"] == null ? null : json["address"],
        destination: json["destination"] == null ? null : json["destination"],
        reservation: json["reservation"] == null ? null : json["reservation"],
        time: json["time"] == null ? null : json["time"],
        date: json["date"] == null ? null : DateTime.parse(json["date"])
        
    );

    Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "fullName": fullName == null ? null : fullName,
        "address": address == null ? null : address,
        "destination": destination == null ? null : destination,
        "reservation": reservation == null ? null : reservation,
        "time": time == null ? null : time,
        "date": date == null ? null : date!.toIso8601String()
    };
}


class AllService {
    AllService({
         this.id,
         this.destination,
         this.reservation,
         this.time,
         this.date,
         this.createdAt,
         this.updatedAt,
         this.v,
    });

    String? id;
    String? destination;
    String? reservation;
    String? time;
    DateTime? date;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    factory AllService.fromJson(Map<String, dynamic> json) => AllService(
        id: json["_id"] == null ? null : json["_id"],
        destination: json["destination"] == null ? null : json["destination"],
        reservation: json["reservation"] == null ? null : json["reservation"],
        time: json["time"] == null ? null : json["time"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"] == null ? null : json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "destination": destination == null ? null : destination,
        "reservation": reservation == null ? null : reservation,
        "time": time == null ? null : time,
        "date": date == null ? null : date!.toIso8601String(),
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "__v": v == null ? null : v,
    };
}

class BookedTicket {
    BookedTicket({
         this.id,
         this.destination,
         this.reservation,
         this.time,
         this.date,
         
    });

    String? id;
    String? destination;
    String? reservation;
    String? time;
    DateTime? date;
    

    factory BookedTicket.fromJson(Map<String, dynamic> json) => BookedTicket(
        id: json["_id"] == null ? null : json["_id"],
        destination: json["destination"] == null ? null : json["destination"],
        reservation: json["reservation"] == null ? null : json["reservation"],
        time: json["time"] == null ? null : json["time"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        
    );

    Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "destination": destination == null ? null : destination,
        "reservation": reservation == null ? null : reservation,
        "time": time == null ? null : time,
        "date": date == null ? null : date!.toIso8601String(),
        
    };
}

