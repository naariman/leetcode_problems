class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

let threeNode = Node.init(value: 3, next: nil)
let twoNode = Node.init(value: 2, next: threeNode)
let oneNode = Node.init(value: 1, next: twoNode)


func reversedList(head: Node?) -> Node? {
    var prev: Node? = nil
    var cur = head
    
    while (cur != nil) {
        var next = cur?.next
        
        cur?.next = prev
        
        prev = cur
        cur = next
    }
    
    return prev
}
