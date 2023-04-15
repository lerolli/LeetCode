class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flowerbed = flowerbed
        var count = n
        
        for i in 0..<flowerbed.count {
            if count == 0 {
                return true
            }
            if flowerbed[i] == 1 {
                continue
            }
            if i - 1 >= 0 && flowerbed[i - 1] == 1 {
                print("i continue \(i)")
                continue
            }
            if i + 1 < flowerbed.count && flowerbed[i + 1] == 1 {
                continue
            }
            print(i)
            flowerbed[i] = 1
            count -= 1

        }
        return count == 0
    }
}

var solution = Solution()
print(solution.canPlaceFlowers([1,0,0,0,0,1], 2))


