library roman_numerals_test;

import 'package:unittest/unittest.dart';
import 'package:roman_numerals/roman_numerals.dart';

main(){
  test('Convert decimal to roman notation', (){
    expect(RomanNumerals.to_roman(55),   'LV');
    expect(RomanNumerals.to_roman(2731), 'MMDCCXXXI');
    expect(RomanNumerals.to_roman(1354), 'MCCCLIV');
    expect(RomanNumerals.to_roman(2738), 'MMDCCXXXVIII');
    expect(RomanNumerals.to_roman(1135), 'MCXXXV');
    expect(RomanNumerals.to_roman(1320), 'MCCCXX');
  });
  
  test('Convert roman notation to decimal', (){
    expect(RomanNumerals.to_decimal('MCMXIX'),     1919);
    expect(RomanNumerals.to_decimal('MMCCII'),     2202);
    expect(RomanNumerals.to_decimal('MMDCCLXII'),  2762);
    expect(RomanNumerals.to_decimal('MDCCCXXXIX'), 1839);
    expect(RomanNumerals.to_decimal('MCCLXXX'),    1280); 
  });
  
  test('Detect if valid roman notation', (){
    expect(RomanNumerals.check_if_valid('XXXX'),       false);
    expect(RomanNumerals.check_if_valid('VIIII'),      false);
    expect(RomanNumerals.check_if_valid('XXAI'),       false);
    expect(RomanNumerals.check_if_valid('MDCCCXXXIX'), true);
    expect(RomanNumerals.check_if_valid('MII'),        true);
    expect(RomanNumerals.check_if_valid('MMDCCXXIX'),  true);
  });
}