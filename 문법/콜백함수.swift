func loadCallback(closure: () -> Void){
    print("시작")
    clousure()
}

loadCallback() {
    print("종료")
}
