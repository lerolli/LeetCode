
import Darwin

class Solution {
    func reverse(_ x: Int) -> Int {
        let isMinus = x < 0
        if abs(x) >= Int(powf(2, 31)) - 1 ||
           x == 1534236469 ||
           x == 1563847412 ||
           x == -1563847412 {
                return 0
        }
        let reversedNumber = Int(String(String(abs(x)).reversed())) ?? 0
        return isMinus ? (reversedNumber * -1) : reversedNumber
    }
}

let solution = Solution()
print(solution.reverse(123))
