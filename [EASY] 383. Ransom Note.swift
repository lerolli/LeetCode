class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var ransomNote = ransomNote
            .map { String($0) }

        var magazine = magazine
            .map { String($0) }
        
        for character in ransomNote {
            if let index = magazine.firstIndex(of: character) {
                magazine.remove(at: index)
            } else {
                return false
            }
        }
        return true
    }
}