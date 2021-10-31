String replaceChar(String string) {
  string = string.toLowerCase();
  string = string.replaceAll('ş', 's');
  string = string.replaceAll('ö', 'o');
  string = string.replaceAll('ı', 'i');
  string = string.replaceAll('ü', 'u');
  string = string.replaceAll('ğ', 'g');
  string = string.replaceAll('ç', 'c');

  return string;
}



