//: [Previous: __Introduction__](@previous)
/*:
 # Observable
 _PS: Please build RxExample scheme first, using Cmd + B_
 */
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
import RxSwift

//: Observable will emitting its value, one-by-one
/// Observable that will emit three values
let number = Observable.of("satu", "dua", "tiga")

// From an array
//let number = Observable.from(["satu", "dua", "tiga"])

// By declares each event one by one
//let number = Observable<String>.create { observer -> Disposable in
//    observer.on(.next("satu"))
//    observer.on(.next("dua"))
//    observer.on(.next("tiga"))
//    observer.on(.completed)
//
//    return Disposables.create()
//}

/*:
 Subscribing an observable has 4 condition:
 * __onNext__ : When observable is emitting each of its value
 * __onError__ : When an error is happen during emitting/subscribing
 * __onCompleted__ : When observable is done emitting all its value
 * __onDisposed__ : When subscriber is disposed
 
 _But, you doesn't need to handle all those condition when subscribing an observable_
 */
let disposeBag: DisposeBag = DisposeBag()

number.subscribe(
        onNext: { print($0) },
        onError: { print($0) },
        onCompleted: { print("complete") },
        onDisposed: { print("disposed") }
    ).disposed(by: disposeBag)

// You doesn't need to handle all kind of events
//number.subscribe(
//        onNext: { print($0) }
//).disposed(by: disposeBag)

/*:
 [Next topic: __Subject__](@next)
 */
