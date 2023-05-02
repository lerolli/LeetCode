class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        var result = 1
        for number in nums {
            if number == 0 {
                return 0
            }
            if number > 0 {
                result *= 1
            } else {
                result *= -1
            }
        }    
        return result   
    }
}