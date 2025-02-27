public class SumOfNumbers {
    public static Integer calculateSum(integer numbers) {
        // Initialize the sum variable
        Integer sum = 0;

        // Use a for loop to iterate from 1 to 10
        for (Integer i = 1; i <= numbers; i++) {
            sum += i; // Add the current number to the sum
        }

        // Return the total sum
        return sum;
    }
}