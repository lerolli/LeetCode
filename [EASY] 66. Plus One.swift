class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        digits = digits.reversed()
        var temp = 1
        
        for i in 0..<digits.count {
            if digits[i] + temp > 9 {
                digits[i] = 0
                temp = 1
            } else {
                digits[i] += temp
                temp = 0
            }
        }
        if temp == 1 {
            digits.append(1)
        }
        return digits.reversed()
    }
}

print(Solution().plusOne([9]))