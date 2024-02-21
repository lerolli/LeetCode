/* 

firstNumberRange = nums.first

if i + 1 == number
continue
else 
show firstNumberRange + -> + i
firstNumberRange = number
i = number

            
[0,1,2,4,5,7]


*/


class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else {
            return []
        }

        var firstNumberRange = nums[0]
        var i = nums[0]
        var result: [String] = []

        for j in 0..<nums.count + 1 {
            defer {
                i += 1
            }
            
            if j != nums.count && nums[j] == i {
                continue
            }

            if i - 1  == firstNumberRange {
                result.append(String(firstNumberRange))
            } else {
                result.append("\(firstNumberRange)->\(i - 1)")
            }
            
            if j != nums.count {
                firstNumberRange = nums[j]
                i = nums[j]
            }
        }

        return result
    }
}


print(Solution().summaryRanges([0,1,2,4,5,7]))
print(Solution().summaryRanges([0,2,3,4,6,8,9]))