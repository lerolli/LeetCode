class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let cleanS = s.lowercased().filter { $0.isLetter || $0.isNumber }
        let reversedS = String(
            cleanS.reversed()
        )
        return reversedS == cleanS
    }
}

let solution = Solution()
print(solution.isPalindrome("A man, a plan, a canal: Panama"))