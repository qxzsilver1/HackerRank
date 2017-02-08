import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

class Student{
   private int token;
   private String fname;
   private double cgpa;
   public Student(int id, String fname, double cgpa) {
      super();
      this.token = id;
      this.fname = fname;
      this.cgpa = cgpa;
   }
   public int getToken() {
      return token;
   }
   public String getFname() {
      return fname;
   }
   public double getCgpa() {
      return cgpa;
   }
}

public class Solution {

    public static void main(String[] args) {
      Scanner in = new Scanner(System.in);
      int totalEvents = Integer.parseInt(in.nextLine());
      PriorityQueue<Student> student_queue = new PriorityQueue(Comparator.comparing(Student::getCgpa).reversed().thenComparing(Student::getFname).thenComparing(Student::getToken));
      while(totalEvents>0){
         String event = in.next();
            
           //Complete your code 
          if (event.equals("ENTER")) {
            String name = in.next();
            float cgpa = in.nextFloat();
            int token = in.nextInt();

            Student student = new Student(token, name, cgpa);
            student_queue.add(student);
           }
           else if (event.equals("SERVED")) {
            Student first = student_queue.poll();
           }
         totalEvents--;
      }
      Student first=student_queue.poll();
      if (first==null)
          System.out.println("EMPTY");
      else{
          while(first!= null) {
              System.out.println(first.getFname());
              first=student_queue.poll();
          }
      }
    }
}
