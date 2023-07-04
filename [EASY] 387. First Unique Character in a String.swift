class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var arr = Array(repeating: 0, count: 26)
        let a = UnicodeScalar("a").value
        s.unicodeScalars.forEach{
            arr[Int($0.value - a)] += 1
        }
        var iter = 0
        for ch in s.unicodeScalars {
            if arr[Int(ch.value - a)] == 1 { return iter }
            iter += 1
        }
        return -1
    }
}
