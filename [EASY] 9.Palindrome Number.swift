import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
       String(String(x).reversed()) == String(x)
       // reversed() -> O(1)
    }
}

let solution = Solution()
print(solution.isPalindrome(11))
