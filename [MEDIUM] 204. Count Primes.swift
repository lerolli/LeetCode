class Solution {
    func countPrimes(_ n: Int) -> Int {
        if n < 3 {
            return 0
        }
        var numbers = Array(repeating: false, count: n + 1)
        numbers[0] = true
        numbers[1] = true
        
        var countPrimes = 0
        var prime = 2
        while prime <= n {
            var m = 1
            while prime * m <= n {
                numbers[prime*m] = true  
                m += 1
            }
            countPrimes += 1
            if let index = numbers.firstIndex(of: false) {
                prime = Int(index)
            } else {
                break
            }
        }
        return countPrimes
    }
}

print(Solution().countPrimes(2))