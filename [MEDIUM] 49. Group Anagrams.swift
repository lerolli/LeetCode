class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        let sortedStrs = strs.map { String($0.sorted()) }
        var dict = [String: [String]]()
        for i in 0..<strs.count {
            if dict[sortedStrs[i]] == nil {
                dict[sortedStrs[i]] = [strs[i]]
            } else {
                dict[sortedStrs[i]]?.append(strs[i])
            }
        }
        return Array(dict.values)
    }
}