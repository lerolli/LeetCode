class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var l = 0
        var r = height.count - 1
        var square = 0
        while l < r {
            let tempSquare = min(height[l], height[r]) * (r - l)
            if tempSquare > square {
                print("update square -",l, r)
                square = tempSquare
            }
            if height[l] > height[r] {
                r -= 1
            } else {
                l += 1
            }
            print(l, r)
        }
        return square
    }
}

print(Solution().maxArea([2,3,4,5,18,17,6]))