import Foundation

class SomeData {
    var data = ["flgi","su"]
    
    subscript(index: Int) -> Int {
        get {
          //기존의 문자열 반환이 아닌 수 반환
            return data[index].count
        }
    }
}

var a = SomeData()
print(a[0])   // 4 반환
