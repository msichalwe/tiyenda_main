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
