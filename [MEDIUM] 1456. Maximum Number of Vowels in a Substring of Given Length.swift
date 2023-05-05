class Solution {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        var vowelLetters: Set<String> = ["a", "e", "i", "o", "u"]
        var maxVowels = 0
        var currentVowels = 0
        var string = s.map {String($0)}
        for i in 0..<k {
            if vowelLetters.contains(string[i]) {
                currentVowels += 1
            }
        }
        
        maxVowels = currentVowels

        for i in k..<string.count {
            if vowelLetters.contains(string[i]) {
                currentVowels += 1
            }
            if vowelLetters.contains(string[i - k]) {
                currentVowels -= 1
            }
            maxVowels = max(maxVowels, currentVowels)
        }
        return maxVowels
    }
}

print(Solution().maxVowels("ibpbhixfiouhdljnjfflpapptrxgcomvnb", 33))