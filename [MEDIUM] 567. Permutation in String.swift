class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let countS2 = s2.count
        let countS1 = s1.count
        let s1Sorted = s1.sorted() 
        for i in 0..<countS2 {
            if i + countS1 > countS2 {
                return false
            } else {
                let startIndex = String.Index(utf16Offset: i, in: s2)
                let endIndex = String.Index(utf16Offset: i + countS1, in: s2)
                let mySubstring = s2[startIndex..<endIndex]

                if mySubstring.sorted() == s1Sorted {
                    return true
                }
            }
        }
        return false 
    }
}