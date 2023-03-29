//myProperty가 변경되면 _myProperty에 값을 새로 저장함
var _myProperty: Int
var myProperty: Int {
   get {
      return _myProperty
   }
   set(newVal) {
      _myProperty = newVal
   }
}
