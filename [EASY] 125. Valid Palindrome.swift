class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let cleanS = s.lowercased().filter { $0.isLetter || $0.isNumber }
        let reversedS = String(
            cleanS.reversed()
        )
        return reversedS == cleanS
    }

    func isPalindrome2(_ s: String) -> Bool {
        var i = 0
        var j = s.count - 1

        while i <= j {
            let leftElement = s.subscript(i)
            let rightElement = s.subscript(j)
            guard leftElement.isLetter || rightElement.isNumber else {
                i += 1
                continue
            }

            guard leftElement.isLetter || rightElement.isNumber else {
                j -= 1
                continue
            }
            if leftElement.lowercased() != rightElement.lowercased() {
                return false
            }
            i += 1
            j -= 1
        }
        return true
    }
}

let solution = Solution()
print(solution.isPalindrome2("ab2a"))