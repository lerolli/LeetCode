final class Node {
    var val: Int
    var neighbors: [Node?]
    init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}
 

class Solution {
    var memo = [Int: Node]()
        
    func cloneGraph(_ node: Node?) -> Node? {
        guard let node = node else {
            return nil
        }
        if let resp = memo[node.val] {
            return resp
        }
        
        let newNode = Node(node.val)
        memo[node.val] = newNode
        newNode.neighbors = node.neighbors.map(cloneGraph)
        return newNode
    }
}
