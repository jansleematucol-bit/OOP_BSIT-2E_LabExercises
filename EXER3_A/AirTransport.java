// Functional Programming Example
// Nag-gamit ta og Streams ug Lambda Expressions para functional style

import java.util.*;
import java.util.stream.*;

public class Exer1_Functional {
    public static void main(String[] args) {
        // List sa mga numero
        List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5, 6);

        // Functional style: filter even numbers ug kuhaon ang ilang square
        List<Integer> evenSquares = numbers.stream()
                                           .filter(n -> n % 2 == 0)   // filter mga even numbers
                                           .map(n -> n * n)           // square sa numero
                                           .collect(Collectors.toList()); 

        System.out.println("Even Squares: " + evenSquares);
    }
}
