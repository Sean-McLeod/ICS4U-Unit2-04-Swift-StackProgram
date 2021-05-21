/* This is a class that pushes 
   and prints out elements.

   Sean McLeod
   2021/05/20
*/

class MrCoxallStack {
    var stackArray = [Int]()

    enum IntParsingError: Error {
        case overflow
        case invalidInput
    }

    func peekElement() -> Int {
        let size = self.stackArray.count
        if size <= 0 {
            return -1
        } else {
            let topElement = self.stackArray[size - 1]
            return topElement
        }
    }

    func popElement() -> Int {
        let size = self.stackArray.count
        if size <= 0 {
            return -1
        } else {
            let lastElement = self.stackArray.remove(at: size - 1)
            return lastElement
        }
    }

    func clearElement() {
        self.stackArray.removeAll()
    }

    func pushNumber(anElement: Int) {
        self.stackArray.append(anElement);
    }

    func printStack() {
        let size = self.stackArray.count
        if size <= 0 {
            print("****no item****")
        } else {
            for item in 0..<size {
                print(self.stackArray[item])
            }
        }
    }
}
