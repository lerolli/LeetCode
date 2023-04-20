// https://leetcode.com/problems/maximum-width-of-binary-tree/
// TODO: Прийти через месяу и попробовать еще раз прорешать

class Solution {
    func widthOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else {return 0}
        
        var queue : [(TreeNode,Int)] = [(root,0)]
        var retVal = Int.min

        while !queue.isEmpty {            
            let count = queue.count
            guard let first = queue.first, 
                  let last = queue.last 
            else { return 0 }
            retVal = max(retVal, last.1 - first.1 + 1 )
            let idx = first.1
            
            for _ in 0..<count {
                let first = queue.removeFirst()
                
                let node = first.0
                let index = first.1 - idx
                
                if let left = node.left {
                    let leftChildIndex = 2*index
                    queue.append((left,leftChildIndex))
                }
                if let right = node.right {
                    let rightChildIndex = 2*index+1
                    queue.append((right,rightChildIndex))
                }
            }
        }
        return retVal
    }  
}

final class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(
        _ val: Int = 0,
        _ left: TreeNode? = nil
        _ right: TreeNode? = nil
    ) {
        self.val = val
        self.left = left
        self.right = right
    }
}