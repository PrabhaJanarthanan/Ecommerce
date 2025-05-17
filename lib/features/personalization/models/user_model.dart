import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/utils/formatters/formatter.dart';

class UserModel {
  //final for which we do not want to change
  final String id;
  String firstName;
  String lastName;
  final String userName;
  final String email;
  String phoneNumber;
  String profilePicture;

  //Constructor
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  //Helper function to get the full name
  String get fullName => '$firstName $lastName';

  //Helper function to format phone number
  String get formattedPhoneNumber => PRFormatter.formatPhoneNumber(phoneNumber);

  //Static function to split the full name into first name and last name
  static List<String> nameParts(fullName) => fullName.split(' ');

  //Static function to generate a username from full name
  static String generateUserName(fullName){
    List<String> nameParts = fullName.split(' ');
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : '';

    String camelCaseUserName = '$firstName$lastName';
    String usernameWithPrefix = 'pro_$camelCaseUserName';
    return usernameWithPrefix;
  }

  //Static function to create an empty user model
  static UserModel empty() => UserModel(id: '', firstName: '', lastName: '', userName: '', email: '', phoneNumber: '', profilePicture: '');

  // Convert model to json structure to store data in Firebase
  Map<String, dynamic> toJson() {
    return {
   
    'FirstName': firstName,
    'LastName': lastName,
    'UserName': userName,
    'Email': email,
    'PhoneNumber': phoneNumber,
    'ProfilePicture': profilePicture,
  };
  }
//Factory method to create a usermodel from a firebase document snapshot
factory UserModel.fromSnapshot(DocumentSnapshot <Map<String, dynamic>> document) {
  if(document.data() != null){
    final data = document.data()!;
    return UserModel(
      id: document.id,
      firstName: data['FirstName'] ?? '',
      lastName: data['LastName'] ?? '',
      userName: data['UserName'] ?? '',
      email: data['Email'] ?? '',
      phoneNumber: data['PhoneNumber'] ?? '',
      profilePicture: data['ProfilePicture'] ?? '',
    );
  }else{
    return UserModel(
      id: '',
      firstName: '',
      lastName: '',
      userName: '',
      email: '',
      phoneNumber: '',
      profilePicture: '',
    );
    
  }
  
}
}

