#RomanNumerals

RomanNumerals takes care of simple roman notation conversion for you. All in the glory of the Dart Language.

##Install from Dart Pub Repository

Include the following in your `pubspec.yaml`:

    dependencies:
      roman_numerals: any

Then run the [Pub Package Manager](http://pub.dartlang.org/doc) in Dart Editor (Tool > Pub Install). If you are using a different editor, run the command
(comes with the Dart SDK):

    pub install

## Usage

    import 'package:roman_numerals/roman_numerals.dart';
    
    RomanNumerals.toDecimal("XLII"); => returns 42
    
    RomanNumerals.toRoman(13); => returns XIII
    
    RomanNumerals.checkIfValid("XXXX"); => returns false
    
 ## Changelog
 
   + 1.0.2 - the code style is now closer to Dart's.



    
    
