/* This is a program that
   stacks information using OOP.

   Sean McLeod
   2021/05/20
*/

enum IntParsingError: Error {
    case overflow
    case invalidInput
}

// call object
let myStack = MrCoxallStack()
print("Stack program\n")

// input
print("How many items are you going to add: ")
do {
    guard let nOfItems = Int(readLine()!) else {
        throw IntParsingError.invalidInput
    }
    print()
    for item in stride(from: 1, through: nOfItems, by: 1) {
        // get input and push them in to pushNumber function
        print("Element \(item): ", terminator: " ")
        guard let anElement = Int(readLine()!) else {
            throw IntParsingError.invalidInput
        }
        myStack.pushNumber(anElement: anElement)
    }
    // print the items
    print("\nThese are the items: ")
    myStack.printStack()

    // call the getter
    print("\nYour last element: ")
    let peekResult = myStack.peekElement()
    if peekResult == -1 {
        print("****no item****")
    } else {
        print(peekResult)
    }

    // call the pop method
    print("\nYour last element that was removed: ")
    let popResult = myStack.popElement()
    if popResult == -1 {
        print("****no item****")
    } else{
        print(popResult)
    }

    // print the items
    print("\nThese are the refreshed items: ")
    myStack.printStack()

    // clear elements
    print("\nAll items are removed: ");
    myStack.clearElement()
    myStack.printStack()

} catch {
    print("\nPlease enter an integer.")
}
