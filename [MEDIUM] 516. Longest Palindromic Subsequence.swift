class Solution {
    func longestPalindromeSubseq(_ s: String) -> Int {
        (1..<s.count)
        .reduce(into:(
                memo: [1],
                s: Array(s) // `s` is set once before looping, and read-only thereafter
        )) { data, i in 
            data.memo.append(1)
            (0..<i).reversed().reduce(into: 0) { prev, j in 
                (prev, data.memo[j]) = 
		            (
		                data.memo[j],                                        
                        data.s[i] == data.s[j] ? prev + 2 : data.memo[j...j+1].max()!
            		)
	        }
	    }
        .memo[0]
    }
}