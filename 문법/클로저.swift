func closureCaseFunction(a: Int,b : Int, clousure: (Int) -> Void) {
    let c = a + b
    clousure(c)
}

func doSomething (_ a:Int) -> Void {
    print("안녕: \(a)")
}

//(Int) -> Void형 타입 객체
let functionB: (Int) -> Void

functionB = doSomething(_:)

closureCaseFunction(a:10,b: 20, clousure: functionB)
closureCaseFunction(a: 20, b: 20) {n in
    print("클로저 실행\(n)")
}

func performEscaping(closure: @escaping () -> ()) {
    aSavedFunction = closure         // 클로저를 실행하는 것이 아니라  aSavedFunction 저장 
    //closure()
}

