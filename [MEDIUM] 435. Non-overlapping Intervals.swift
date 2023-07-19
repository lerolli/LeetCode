/*
Given an array of intervals intervals where intervals[i] = [starti, endi], 
return the minimum number of intervals you need to remove to 
make the rest of the intervals non-overlapping.
*/

class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        var intervals = intervals.sorted { $0[0] < $1[0] }
        var prev = intervals[0]
        var count = 0
        
        for i in 1 ..< intervals.count {
            let start = prev[0]
            let end = prev[1]
            
            if intervals[i][0] < end {
                count += 1
                
                if intervals[i][1] < end {
                    prev = intervals[i]
                }
            } else {
                prev = intervals[i]
            }
        }
        return count
    }
}