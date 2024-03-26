class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        let set = Set(n)
        for i in 0..<n.count where !set.contains(i + 1) { 
            return i + 1 
        }
        return n.count + 1
    }
}