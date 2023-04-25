final class SmallestInfiniteSet {
    private var set: Set<Int>
    
    init() {
        set = Set<Int>()
        for i in 1...1000 {
            set.insert(i)
        }
    }
    
    func popSmallest() -> Int {  
        if let min = set.min(), let minIndex = set.remove(min) {
            return min
        }

        return -1
    }
    
    func addBack(_ num: Int) {
        set.insert(num)
    }
}

var smallestInfiniteSet = SmallestInfiniteSet()
smallestInfiniteSet.addBack(2);    // 2 is already in the set, so no change is made.
print(smallestInfiniteSet.popSmallest()); // return 1, since 1 is the smallest number, and remove it from the set.
print(smallestInfiniteSet.popSmallest()); // return 2, and remove it from the set.
print(smallestInfiniteSet.popSmallest()); // return 3, and remove it from the set.
smallestInfiniteSet.addBack(1);    // 1 is added back to the set.
print(smallestInfiniteSet.popSmallest()); // return 1, since 1 was added back to the set and
                                   // is the smallest number, and remove it from the set.
print(smallestInfiniteSet.popSmallest()); // return 4, and remove it from the set.
print(smallestInfiniteSet.popSmallest()); // return 5, and remove it from the set.