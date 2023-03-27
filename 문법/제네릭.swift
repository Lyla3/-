


func resultType(m: Int) -> Result<Bool, valueError> {
    if m > 5 {
    	return Result.failure(valueError.maxError)
        //failure열거형 채택, 내부의 error중 maxError 채택
    }
}


func resultType(m: Int) -> Result<Success, Failure> {
    // Bool,   Error 타입, 정의된 Success, Failure에 *실제 타입*을 넣어서 쓴다. 
}
