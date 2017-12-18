public class Question1 {

  public Boolean evenOdd(int numA) {
    return ((numA % 2) == 0);
  }

  public static void main (String[] args)
  throws ArrayIndexOutOfBoundsException
  {
      try{ //Did someone enter the required arguments
        while(args[0]=="") { //Two Reasons this will return false or error
          //1. Argument entered so args[0] is NOT null, will run rest of code b/c WHILE
          //2. No argument entered and exception thrown
        }
      }
      catch (ArrayIndexOutOfBoundsException e) {
        System.out.println("You must enter a number to start this program \n" +
                           "Please restart the program with and input a number. Thank you");
        System.exit(0);
      }
      String userInput = args[0];
      int userNum = Integer.parseInt(args[0]);
      System.out.println(userNum);

      Question1 obj = new Question1();
      Boolean answer = obj.evenOdd(userNum);

      System.out.println("Valid number detected, resolving");

      if (answer == true) {
        System.out.println("The number is even");
      } else {
        System.out.println("The number is an odd number");
      }
  }
}
