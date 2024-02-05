class Solution {
    func rotate_simple(_ nums: inout [Int], _ k: Int) {
        var i = 0
        while i < k {
            let element = nums.removeLast()
            nums.insert(element, at: 0)
            i += 1
        }
    }

    func rotate(_ nums: inout [Int], _ k: Int) {
        //Make sure k is in range
        var k = k % nums.count

        //Reverse the whole array
        reverse(&nums, 0, nums.count - 1)
        //Reverse the first k elements
        reverse(&nums, 0, k - 1)
        //Reveres the rest of the elements
        reverse(&nums, k, nums.count - 1)
    }

    func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
        var L = start
        var R = end 
        while(L < R) {
            nums.swapAt(L, R)
            L += 1
            R -= 1
        }
    }
}

var nums = [0]
Solution().rotate(&nums, 3)
print(nums)