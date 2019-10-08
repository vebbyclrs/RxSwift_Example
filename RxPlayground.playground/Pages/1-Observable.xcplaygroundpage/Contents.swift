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

//: We also can create __Observable__ by creating events one-by-on on its ___Observer___
//let number = Observable<String>.create { AnyObserver<_> -> Disposable in
//    observer.on(.next("satu"))
//    observer.on(.next("dua"))
//    observer.on(.next("tiga"))
//    observer.on(.completed)
//
//    return Disposables.create()
//}
/*:
ಠ_ಠ

What do you mean by _Observer_? Also what the heck is ___Disposable___ that included over there?
*/

/*:
 [Next topic: __Subject__](@next)
 */
