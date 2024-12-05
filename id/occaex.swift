func printElements<T: Iterator>(_ iterator: T) {
    for element in iterator {
        print(element)
    }
}

let array = [1, 2, 3, 4, 5]
let iterator = array.makeIterator()
printElements(iterator) // This will work correctly

let indexingIterator = array.makeIterator() as IndexingIterator<[Int]>
printElements(indexingIterator) // This will also work correctly
