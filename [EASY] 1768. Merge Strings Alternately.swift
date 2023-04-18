class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var result = ""
        var word1 = word1.map {String($0)}
        var word2 = word2.map {String($0)}
        var i = 0
        var j = 0
        var isWord1 = true

        while i < word1.count || j < word2.count {
            if isWord1 && i < word1.count {
                result.append(word1[i])
                i += 1
                
            } else if j < word2.count {
                result.append(word2[j])
                j += 1
            }

            isWord1.toggle()
        }

        return result
    }
}