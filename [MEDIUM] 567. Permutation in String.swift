class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let sortedS1 = s1.sorted()
        let s = s2[0..<sortedS1.count]
        print(s)
        return false 
    }
}

let solution = Solution()
let result = solution.checkInclusion("ba", "eidboaoo")
print(result)