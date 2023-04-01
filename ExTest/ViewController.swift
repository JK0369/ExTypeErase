//
//  ViewController.swift
//  ExTest
//
//  Created by 김종권 on 2023/04/01.
//

import UIKit

protocol ImageItem {
    associatedtype Item
    var image: Data { get }
    var item: Item { get }
}

class ViewController: UIViewController {
//    var items1 = [ImageItem]() // error
//    var items2 = [some ImageItem]() // error
    var items3 = [any ImageItem]()
}

protocol Group {
    associatedtype Item

    var items: [Item] { get }
    var users: [User] { get }
}

struct User {
    var name = "user"
}

protocol SomeProtocol {
}

func someFunc0(value: SomeProtocol) -> [String] {
    ["test"]
}

func someFunc1(vlaue: some Group) -> [String] {
    ["test"]
}

func someFunc1(vlaue: any Group) -> [String] {
    ["test"]
}

func someFunc2<T: Group>(value: T) -> [String] {
    ["test"]
}

// users라는 Collection을 받고 내부 타입이 User로 지정하고 싶은 경우
//func func0(_ users: Collection<User>) {
//    print()
//}

func func1<T: Collection>(_ users: T) where T.Element == User {
    print()
}

func func2(_ users: some Collection<User>) -> some Collection<User> {
    return users
}

func func3(_ users: any Collection<User>) -> any Collection<User> {
    return users
}

/*
protocol Collection<Element>: Sequence {
    associatedtype Element
    ...
}
*/

func method0(_ items: some Collection<ImageItem>) {
    
}
