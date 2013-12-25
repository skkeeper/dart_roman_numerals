library roman_numerals_test;

import 'package:unittest/unittest.dart';
import 'package:roman_numerals/roman_numerals.dart';

main(){
  test('Convert decimal to roman notation', (){
    expect(RomanNumerals.toRoman(55),   'LV');
    expect(RomanNumerals.toRoman(2731), 'MMDCCXXXI');
    expect(RomanNumerals.toRoman(1354), 'MCCCLIV');
    expect(RomanNumerals.toRoman(2738), 'MMDCCXXXVIII');
    expect(RomanNumerals.toRoman(1135), 'MCXXXV');
    expect(RomanNumerals.toRoman(1320), 'MCCCXX');
  });
  
  test('Convert roman notation to decimal', (){
    expect(RomanNumerals.toDecimal('MCMXIX'),     1919);
    expect(RomanNumerals.toDecimal('MMCCII'),     2202);
    expect(RomanNumerals.toDecimal('MMDCCLXII'),  2762);
    expect(RomanNumerals.toDecimal('MDCCCXXXIX'), 1839);
    expect(RomanNumerals.toDecimal('MCCLXXX'),    1280); 
  });
  
  test('Detect if valid roman notation', (){
    expect(RomanNumerals.checkIfValid('XXXX'),       false);
    expect(RomanNumerals.checkIfValid('VIIII'),      false);
    expect(RomanNumerals.checkIfValid('XXAI'),       false);
    expect(RomanNumerals.checkIfValid('MDCCCXXXIX'), true);
    expect(RomanNumerals.checkIfValid('MII'),        true);
    expect(RomanNumerals.checkIfValid('MMDCCXXIX'),  true);
  });
}