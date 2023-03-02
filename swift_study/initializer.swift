//
//  main.swift
//  init
//
//  Created by 너굴 on 2023/03/01.
//

import Foundation


class cel {
    var temperature :Int
    var humidity : Int
    
    init() {
        self.temperature = 30
        self.humidity = 50
    }
    
    init(temperature: Int, humidity: Int) {
        self.temperature = temperature
        self.humidity = humidity
    }
    
    convenience init(tem:Int) {
        self.init(temperature: tem, humidity: 40)
    }

}

var korea = cel(temperature: 25, humidity: 34)
print(korea.temperature)

var america = cel(tem: 80)
print(america.temperature)
print(america.humidity)


class cel2 : cel {
    var wind : Int
    override init() {
        wind = 3
        super.init()
    }
    
    convenience init(coldWind:Int) {
        self.init()
        self.wind = coldWind
    }
}

var japan = cel2(coldWind: 10)
print(japan.wind)


