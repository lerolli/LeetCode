class Solution {
    func addDigits(_ num: Int) -> Int {
        num / 10 == 0 ? num : addDigits(num / 10 + num % 10)
    }
}