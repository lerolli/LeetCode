class Solution {
    func average(_ salary: [Int]) -> Double {
        let min = salary.min() ?? 0
        let max = salary.max() ?? 0
        return Double(salary.reduce(0, +) - min - max) / Double(salary.count - 2)
    }
}