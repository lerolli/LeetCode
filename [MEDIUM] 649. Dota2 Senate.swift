class Solution {
    func predictPartyVictory(_ senate: String) -> String {
        var bannedD = 0
        var bannedR = 0
        var countD = 0
        var countR = 0
        var senate = Array(senate)
        var banned = [Int: Bool]()

        repeat {
            countR = 0
            countD = 0
            
            for i in 0..<senate.endIndex {
                guard banned[i, default: false] == false else { continue }

                if senate[i] == "R" {
                    if bannedR == 0 {
                        bannedD += 1
                        countR += 1
                    } else {
                        banned[i] = true
                        bannedR -= 1
                    }
                } else {
                    if bannedD == 0 {
                        bannedR += 1
                        countD += 1
                    } else {
                        banned[i] = true
                        bannedD -= 1
                    }
                }
            }
        } while countR > 0 && countD > 0

        return countR > countD ? "Radiant" : "Dire"
    }
}