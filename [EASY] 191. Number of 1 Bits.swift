class Solution {
    func hammingWeight(_ n: Int) -> Int {
        String(n, radix: 2).filter { $0 == "1" }.count
    }
}

print(Solution().hammingWeight(00000000000000000000000000001011))