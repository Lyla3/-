//수평확장, 현재 존재하는 타입에 기능(메서드)를 추가하여 사용
//확장에서  추가 메모리 공간이 필요한 저장 속성을 확장하는 것은 불가

class AType{ 
}

extension AType {
    // 새로운 기능(메서드)추가 가능
    func dosomeThing() {
        print("기능 추가")
    }
}
