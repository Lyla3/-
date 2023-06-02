var arr = ["바나나","귤","사과","포도","딸기","참외","파인애플","샐러리","고구마","청사과","샤인머스캣"]


for i in 0...10{
    if i == 0 || i == 1 || i == 2 {
        if i == 0 {
            print("Hello \(arr[i]), you are \(i+1)st.")
        } else if i == 1 {
            print("Hi \(arr[i]), you are \(i+1)nd.")
        } else {
            print("Hello \(arr[i]), you are \(i+1)rd.")
        }
    } else {
        if i % 2 != 0 {
            print("Hi \(arr[i]), you are \(i+1)th.")
        } else {
            print("Hello \(arr[i]), you are \(i+1)th.")

        }
    }
}
