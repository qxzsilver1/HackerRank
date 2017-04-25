// Start of Node class
class Node {
    var data: Int
    var left: Node?
    var right: Node?

    init(d : Int) {
        data  = d
    }
} // End of Node class

// Start of Tree class
class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }

        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }

        return root
    }
    
    func getHeight(root: Node?) -> Int {
    	// Complete the function
        if root == nil {
            return -1
        } else {
            let leftHeight = getHeight(root: root?.left)
            let rightHeight = getHeight(root: root?.right)
            
            if leftHeight > rightHeight {
                return leftHeight + 1
            } else {
                return rightHeight + 1
            }
        }
    } // End of getHeight function

} // End of Tree class

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

print(tree.getHeight(root: root))
    
