import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String? msToString(int? timems) {
  var f = NumberFormat("00", "en_US");
  return f.format((timems! / 3600000).floor()) +
      ':' +
      f.format(((timems % 3600000) / 60000).floor()) +
      ':' +
      f.format(((timems % 60000) / 1000).floor());
}
