class Solution {
    func widthOfBinaryTree(_ root: TreeNode?) -> Int {
            
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