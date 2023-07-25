/*
An array arr a mountain if the following properties hold:

arr.length >= 3
There exists some i with 0 < i < arr.length - 1 such that:
arr[0] < arr[1] < ... < arr[i - 1] < arr[i] 
arr[i] > arr[i + 1] > ... > arr[arr.length - 1]
Given a mountain array arr, return the index i such that 
arr[0] < arr[1] < ... < arr[i - 1] < arr[i] > arr[i + 1] > ... > arr[arr.length - 1].

You must solve it in O(log(arr.length)) time complexity.
*/

class Solution {
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        arr.firstIndex(of: arr.max() ?? 0) ?? 0
    }
}

print(Solution().peakIndexInMountainArray([0, 1, 0]))