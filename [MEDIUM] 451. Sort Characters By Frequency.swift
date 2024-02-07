class Solution {
  func frequencySort(_ s: String) -> String {
    var frequencyDictionary: [Character: Int] = [:]

    for symbol in s {
      frequencyDictionary[symbol] = (frequencyDictionary[symbol] ?? 0) + 1 
    }
    var result = ""
    for (key, value) in frequencyDictionary.sorted(by: { $1.1 < $0.1 }) {
      for i in 0..<value {
        result += String(key)
      }
    }
    return result
  }
}

print(Solution().frequencySort("treeE"))