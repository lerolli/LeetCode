class Solution {
    var maxZig = 0

    func longestZigZag(_ root: TreeNode?) -> Int {
        dfs(node: root?.left, isLeft: true, count: 0)
        dfs(node: root?.right, isLeft: false, count: 0)
        return maxZig
    }

    func dfs(node: TreeNode?, isLeft: Bool, count: Int) {
        maxZig = max(count, maxZig)
        if node == nil {
            return
        }
        if isLeft {
            dfs(node: node?.right, isLeft: false, count: count + 1)
            dfs(node: node?.left, isLeft: true, count: 0)
        } else {
            dfs(node: node?.left, isLeft: true, count: count + 1)
            dfs(node: node?.right, isLeft: false, count: 0)
        }
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