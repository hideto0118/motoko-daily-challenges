import Debug "mo:base/Debug";
import Array "mo:base//Array";


actor {

    // Challenge 1
    public func add(n : Nat, m : Nat) : async Nat {
        return(n + m);
    };

    // Challenge 2 : Write a function square that takes a natural number n and returns the area of a square of length n.
    public func square(n : Nat) : async Nat {
        return(n**2);
    };

    // Challenge 3 : Write a function days_to_second that takes a number of days n and returns the number of seconds.
    public func days_to_second(n : Nat) : async Nat {
        return(n*24*60*60); 
    };

    // Challenge 4 : Write two functions increment_counter & clear_counter .
    // increment_counter returns the incremented value of counter by n.
    // clear_counter sets the value of counter to 0.
    var current_value:Nat = 0;

    public func show_counter() : async Nat {
        return current_value;
    };

    public func increment_counter() : async Nat {
        current_value += 1;
        return current_value;
    };

    public func clear_counter() : async (){
        current_value := 0;
    };
    
    // Challenge 5 : Write a function divide that takes two natural numbers n and m and returns a boolean indicating if n divides m.
    public func divide(n : Nat, m : Nat) : async Bool {
        if (m%n == 0)
            return true
        else
            return false;

        // below syntax works too
        // if (m%n == 0) {
        //     return true;
        // }else {
        //     return false;
        // }
    };


    // Challenge 6 : Write a function is_even that takes a natural number n and returns a boolean indicating if n is even.
    public func is_even(n : Nat) : async Bool {
        if (n%2 == 0)
            return true
        else
            return false;
    };

    // Challenge 7 : Write a function sum_of_array that takes an array of natural numbers and returns the sum. This function will returns 0 if the array is empty.
    public func sum_of_array(array_num : [Nat]) : async Nat {
        var counter = 0;
        if ( array_num.size() == 0) {
            return 0
        } else {
            for(value in array_num.vals()) {
                counter += value;
            };
            return counter;
        };
    };

    // Challenge 8 : Write a function maximum that takes an array of natural numbers and returns the maximum value in the array. This function will returns 0 if the array is empty.
    public func maximum(array_num : [Nat]) : async Nat {
        var max_num = 0;
        if ( array_num.size() == 0) {
            return 0;
        } else {
            for (value in array_num.vals()) {
                if (value > max_num){
                    max_num := value;
                };
            };
            return max_num;
        };
    };

    // Challenge 9 : Write a function remove_from_array that takes 2 parameters : an array of natural numbers and a natural number n and returns a new array where all occurences of n have been removed (order should remain unchanged).

    // Challenge 10 :

    // Watch this video on selection sort.
    // Implement a function selection_sort that takes an array of natural numbers and returns the sorted array .

};
