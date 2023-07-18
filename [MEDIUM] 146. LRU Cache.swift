/*
Design a data structure that follows the constraints of a 
Least Recently Used (LRU) cache.

Implement the LRUCache class:

LRUCache(int capacity) Initialize the LRU cache with 
positive size capacity.

int get(int key) Return the value of the key if the 
key exists, otherwise return -1.

void put(int key, int value) Update the value of the key 
if the key exists. Otherwise, add the key-value pair to the cache. 
If the number of keys exceeds the capacity from this operation, 
evict the least recently used key.

The functions get and put must each run in O(1) average time complexity.
*/

class LRUCache {
    private var cache: [Int: Int] = [:]
    private var resentlyUsed: [Int] = []
    private var capacity: Int = 0

    init(_ capacity: Int) {
        self.capacity = capacity
    }
    
    func get(_ key: Int) -> Int {
        print("get \(cache[key] ?? -1)")
        if resentlyUsed.firstIndex(of: key) != nil {
            resentlyUsed.removeAll(where: { $0 == key })
            resentlyUsed.append(key)
        }
        return cache[key] ?? -1
    }
    
    func put(_ key: Int, _ value: Int) {
        print("put \(key) \(value)")
        cache[key] = value
        if resentlyUsed.firstIndex(of: key) == nil {
            resentlyUsed.append(key)
        } else {
            resentlyUsed.removeAll(where: { $0 == key })
            resentlyUsed.append(key)
        }

        if cache.count > capacity {
            print("remove \(resentlyUsed.first!)")
            cache.removeValue(forKey: resentlyUsed.first!)
            resentlyUsed.removeFirst()
        }
    }
}

let lRUCache = LRUCache(2)
let _ = lRUCache.put(2, 1) 
let _ = lRUCache.put(1, 1) 
let _ = lRUCache.put(2, 3)
let _ = lRUCache.put(4, 1)
let _ = lRUCache.get(1)
let _ = lRUCache.get(2)