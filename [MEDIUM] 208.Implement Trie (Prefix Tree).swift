class Trie {
    private var array: [String]
    
    init() {
        array = []
    }
    
    func insert(_ word: String) {
        array.append(word)
    }
    
    func search(_ word: String) -> Bool {
        let item = array.first { $0 == word }
        return item != nil
    }
    
    func startsWith(_ prefix: String) -> Bool {
        let item = array.first { $0.hasPrefix(prefix) }
        return item != nil
    }
}


 
var trie = Trie();
trie.insert("apple");
trie.search("apple");
trie.search("app");
trie.startsWith("app");
trie.insert("app");
trie.search("app");
