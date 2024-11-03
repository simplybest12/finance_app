import 'package:finance_app/services/money.dart';
import 'package:flutter/material.dart';

List<money> geter() {
  money upwork = money();
  upwork.image = 'up.png';
  upwork.name = 'So ans So';
  upwork.fee = '86';
  upwork.color = Colors.yellow;
  upwork.date = 'Yesterday';
  upwork.buy = false;

  money Starbucks = money();
  Starbucks.image = 'starbucks.png';
  Starbucks.name = 'Starbucks';
  Starbucks.fee = '656';
  upwork.color = Colors.greenAccent;
  Starbucks.date = 'Today';
  Starbucks.buy = true;

  money Health = money();
  Health.image = 'starbucks.png';
  Health.name = 'Health';
  Health.fee = '656';
  Health.color = Colors.purple;
  Health.date = 'Today';
  Health.buy = true;
  money Travel = money();
  Travel.image = 'starbucks.png';
  Travel.name = 'Travel';
  Travel.fee = '656';
  Travel.color = Colors.blue;
  Travel.date = 'Today';
  Travel.buy = true;
  money Shopping = money();
  Shopping.image = 'starbucks.png';
  Shopping.name = 'Shopping';
  Shopping.fee = '656';
  Shopping.color = Colors.greenAccent;
  Shopping.date = 'Today';
  Shopping.buy = true;
  money Others = money();
  Others.image = 'starbucks.png';
  Others.name = 'Travel';
  Others.fee = '656';
  Others.color = Colors.greenAccent;
  Others.date = 'Today';
  Others.buy = true;

  return [upwork, Starbucks, Travel, Health, Shopping, Others];
}
