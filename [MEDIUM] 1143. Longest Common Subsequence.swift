class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        var index = 0
 
        for letter in text1 {
            let stringIndex = String.Index(encodedOffset: index)
            if letter == text2[stringIndex] {
                index += 1
            }
        }
 
        return index
    }
}

print(Solution().longestCommonSubsequence("abcde", "ace"))