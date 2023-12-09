import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

DateTime? convertToDateTime(String? stringDate) {
  // takes in a string and returns a date, the string is a date. example string 2023-12-01T14:24:23.996Z
  if (stringDate == null) {
    return null;
  }
  return DateTime.parse(stringDate);
}

int? convertNumIntoInt(String? num) {
  // gets a string and returns an int
  try {
    return int.parse(num!);
  } catch (e) {
    return null;
  }
}

double? convertStringToNum(String? stringInput) {
  // a function that takes a string and returns a num
  if (stringInput == null) {
    return null;
  }
  try {
    return double.parse(stringInput);
  } catch (e) {
    return null;
  }
}

int? calculateServiceCharge(
  int? totalCharge,
  double? percent,
) {
  // get the total charge as an int and the percentage from variables and return a rounded integer.
  if (totalCharge == null || percent == null) {
    return null;
  }
  double serviceCharge = totalCharge * (percent / 100);
  int roundedCharge = serviceCharge.round();
  return roundedCharge;
}

int? newCustomFunction(
  int? total,
  int? serviceCharge,
) {
  // add two numbres and return an int
  if (total != null && serviceCharge != null) {
    return total + serviceCharge;
  } else {
    return null;
  }
}

int? stringToNegativeInteger(String? stringInput) {
  if (stringInput == null) {
    return null;
  }

  try {
    int number = int.parse(stringInput);
    return -number.abs(); // Ensures the number is negative
  } catch (e) {
    // Handle the case where the string does not represent a valid integer
    print("Error: The string is not a valid integer.");
    return null;
  }
}
