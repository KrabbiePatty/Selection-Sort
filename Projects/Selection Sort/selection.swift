var unsortedStrings = [String]()

while let word = readLine() {
    if word == "" {
        break
    } else {
        unsortedStrings.append(word.lowercased())
    }
}



func selectionSort(_ array: [String]) {

    var totalSwaps = 0
    var currentSwaps = 0
    var totalPasses = 0
    var strings = array                    
    for x in 0 ..< strings.count - 1 {     
        
        currentSwaps = 0

        var temp = x                      
        for y in x + 1 ..< strings.count {   
            if strings[y] < strings[temp] {   
                temp = y
            }
        }

        if x != temp {               
            strings.swapAt(x, temp)
        }
        totalSwaps += 1
        currentSwaps += 1
        totalPasses += 1
    }
    print(strings)
}

selectionSort(unsortedStrings)
