class Solution {
    func search(_ numbers: [Int], _ target: Int) -> Int {
        var left = 0
        var right = numbers.count - 1
        while left <= right {
            var mid = left + (right - left) / 2
            if (numbers[mid] == target) {
                       return mid;
            }
            else if (numbers[mid] < target) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }
        
        return -1
    }
}

var solution = Solution()
solution.search([1, 2, 3, 4, 5], 5)
