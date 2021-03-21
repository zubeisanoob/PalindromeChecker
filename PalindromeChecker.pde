public void setup()
{
  String lines[] = loadStrings("palindromes.txt");

  System.out.println("there are " + lines.length + " lines");

  for (int i = 0; i < lines.length; i++) {
    if (palindrome(preProcess(lines[i]))==true) {
      System.out.println(lines[i] + " IS a palindrome.");
    } else {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
  System.out.println(preProcess("nUrses! r,un."));
}
public boolean palindrome(String word) {
  if (reverse(word).equals(word)) {
      return true;
  } else {
      return false;
  }
  
}
public String reverse(String str) {
    String sNew = new String();
    for (int i = str.length(); i > 0; i--) {
        sNew = sNew + str.substring(i-1, i);
    }
    return sNew;
}

public String preProcess(String word) {
    String newWord;
    // uhhh this works I guess! Right? Help :(
    newWord = word.replaceAll(" ", "").toLowerCase().replaceAll("!", "").replaceAll(",", "").replaceAll("\\.", "").replaceAll("\\'", "");
    return newWord;
}
