var array = [String]()

//직렬 큐 생성
let serialQueue = DispatchQueue(label: "serial")


for i in 1...20 {
    DispatchQueue.global().async {
        print("\(i)")
        //array.append("\(i)")    //  동시큐에서 실행하면 동시다발적으로 배열의 메모리에 접근 -> 배열은 여러 쓰레드에서 접근하면 문제가 생길 수 있음
        
        serialQueue.async {        // 올바른 처리(직렬 큐에 담아준다.)
            array.append("\(i)")
        }
    }
}
