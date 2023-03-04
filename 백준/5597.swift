//
//  main.swift
//  5597
//  교수님이 내준 특별과제를 28명이 제출했는데, 그 중에서 제출 안 한 학생 2명의 출석번호를 구하는 프로그램을 작성하시오.
//  Created by Lyla on 2023/03/04.
//

import Foundation


var stArray : [String] = []
for i in 1...30 {
    stArray.append(String(i))
}

for _ in 1...28 {
    let a = readLine()! // 배열 안쓰고 지울 수 있게
    stArray.remove(at: (stArray.firstIndex(of: a)!))
}

for i in stArray{
    print(i)
}

