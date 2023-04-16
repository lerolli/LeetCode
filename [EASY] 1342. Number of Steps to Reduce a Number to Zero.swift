class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var steps = 0
        var number = num
        while number != 0 {
            if number % 2 == 0 {
                number /= 2
            } else {
                number -= 1
            }
            steps += 1
        }
        return steps
    }
}