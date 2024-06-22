// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// ignore_for_file: file_names

class ListDataModel {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? dob;

  ListDataModel({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.dob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'dob': dob,
    };
  }

  factory ListDataModel.fromMap(Map<String, dynamic> map) {
    return ListDataModel(
      id: map['id'] != null ? map['id'] as String : null,
      firstName: map['firstName'] != null ? map['firstName'] as String : null,
      lastName: map['lastName'] != null ? map['lastName'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      dob: map['dob'] != null ? map['dob'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ListDataModel.fromJson(String source) => ListDataModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
