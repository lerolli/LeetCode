class Solution {
    func firstUniqChar(_ s: String) -> Int {
        let array = Array(s)
        var dublicates: Set<Character> = []
        
        for i in 0..<array.count {
            for j in i+1..<array.count {
                if array[j] == array[i] {
                    dublicates.insert(array[i])
                    break
                }
            }
            if !dublicates.contains(array[i]) {
                return i
            }
        }
        return -1
    }

    func firstUniqChar2(_ s: String) -> Int {
        var dublicates: [Character: Int] = [:]

        for char in s {
            dublicates[char] = (dublicates[char] ?? 0) + 1 
        }
        
        var i = 0
        for char in s {
            if dublicates[char] == 1 {
                return i
            }
            i += 1
        }
        return -1
    }
}

print(Solution().firstUniqChar2("loveleetcode"))