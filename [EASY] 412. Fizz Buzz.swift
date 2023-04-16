class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result: [String] = []
        for i in 1...n {
            switch i {
                case i where i % 3 == 0 && i % 5 == 0:
                    result.append("FizzBuzz")
                case i where i % 3 == 0:
                    result.append("Fizz")
                case i where i % 5 == 0:
                    result.append("Buzz") 
                default:
                    result.append("\(i)")
            }
        }
        return result
    }
}