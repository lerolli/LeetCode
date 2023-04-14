class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var i = 0
        var prefix: String = ""
        
        while i < strs.first?.count ?? 0 {
            prefix = String((strs.first ?? "").prefix(i + 1))
            for str in strs {
                if !str.hasPrefix(prefix) {
                    return String(prefix.dropLast(1))
                }
            }
            i += 1
        }
        return prefix
    }
}

let solution = Solution()
solution.longestCommonPrefix(["a"])
