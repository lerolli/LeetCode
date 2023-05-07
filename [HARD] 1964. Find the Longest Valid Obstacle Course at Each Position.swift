class Solution {
    func longestObstacleCourseAtEachPosition(_ obstacles: [Int]) -> [Int] {
        var result = Array(repeating: 1, count: obstacles.count)
        let n = obstacles.count
        var length = 0
        var increasingSubseq = Array(repeating: 0, count: n)

        for i in 0..<n {
            
            var left = 0
            var right = length
            
            while left < right {
                let mid = (left + right) / 2
                if increasingSubseq[mid] <= obstacles[i] {
                    left = mid + 1
                } else {
                    right = mid
                }
            }
            result[i] = left + 1
            
            if length == left {
                length += 1
            }
            increasingSubseq[left] = obstacles[i]
        }
        
        return result
    }
}

print(Solution().longestObstacleCourseAtEachPosition([3,1,5,6,4,2]))