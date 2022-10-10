var unsortedStrings = [String]()

while let word = readLine() {
    if word == "" {
        break
    } else {
        unsortedStrings.append(word.lowercased())
    }
}

var data = unsortedStrings
var last = data.count - 1
var swap = true
var pass = 0
var tswap = 0
var swaps = 0
while swap == true {
    swap = false
    for i in 0..<last {
        if data[i] > data[i + 1] {
            swap(strings: &data, firstIndex: i, secondIndex: i + 1)
            swaps += 1
            swap = true

        }

    }

    pass += 1
    swaps = 0
}
print(data)



func swap(strings: inout [String], firstIndex: Int, secondIndex: Int) {
    strings.swapAt(firstIndex, secondIndex)
    tswap += 1
    
}
