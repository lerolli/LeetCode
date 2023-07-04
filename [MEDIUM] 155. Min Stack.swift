class MinStack {
    var stack: [Int] = []
    func push(_ val: Int) {
        stack.append(val)
    }
    
    func pop() {
        stack.removeLast()
    }
    
    func top() -> Int {
        stack.last ?? 0
    }
    
    func getMin() -> Int {
        stack.min() ?? 0
    }
}

var minStack = MinStack();
minStack.push(-2);
minStack.push(0);
minStack.push(-3);
print(minStack.getMin()) // return -3
minStack.pop();
print(minStack.top())    // return 0
print(minStack.getMin()) // return -2