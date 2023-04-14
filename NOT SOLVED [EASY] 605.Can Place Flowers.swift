class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var count = n
        var isSkipOne = false
        
        for flower in flowerbed {
            if flower == 1 {
                isSkipOne = false
                continue
            }
            if isSkipOne {
                count -= 1
                isSkipOne = false
            } else {
                isSkipOne = true
            }
        }
        return count == 0 && isSkipOne
    }
}

var solution = Solution()
solution.canPlaceFlowers([1,0,0,0,0,1],2) // false
solution.canPlaceFlowers([1,0,0,0,1],1) // true

