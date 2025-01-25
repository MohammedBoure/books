function convertNumberToWords() {
    const number = document.getElementById("numberInput").value;
  
    // Check if input is a number
    if (isNaN(number)) {
      document.getElementById("output").innerHTML = "Please enter a valid number.";
      return;
    }
  
    // Convert the number to a non-negative integer
    const nonNegativeNumber = Math.abs(number);
  
    // Check if the number is greater than 999
    if (nonNegativeNumber > 999) {
      document.getElementById("output").innerHTML = "The number must be between 0 and 999.";
      return;
    }
  
    const ones = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"];
    const teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"];
    const tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"];
    const thousands = ["", "thousand", "million", "billion"];
  
    let words = "";
  
    // Split the number into hundreds, tens, and ones
    const hundred = Math.floor(nonNegativeNumber / 100);
    const remaining = nonNegativeNumber % 100;
    const ten = Math.floor(remaining / 10);
    const one = remaining % 10;
  
    // Convert hundreds to words
    if (hundred > 0) {
      words += ones[hundred] + " hundred ";
    }
  
    // Convert tens and ones to words (special case for teens)
    if (ten > 0) {
      if (ten === 1 && one > 0) {
        words += teens[one - 1] + " ";
      } else {
        words += tens[ten] + " ";
        if (one > 0) {
          words += ones[one] + " ";
        }
      }
    } else if (one > 0) {
      words += ones[one] + " ";
    }
  
    if (words.length > 0 && number < 0) {
      words = "negative " + words;
    }
  
    // Add the number group (thousand, million, billion)
    const groupIndex = Math.floor(Math.log(nonNegativeNumber) / Math.log(1000));
    words += thousands[groupIndex];
  
    document.getElementById("output").innerHTML = words.trim();
  }
  
  