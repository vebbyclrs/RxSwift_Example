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

/*:
 Subscribing an observable has 4 condition:
 * __onNext__ : When observable is emitting each of its value
 * __onError__ : When an error is happen during emitting/subscribing
 * __onCompleted__ : When observable is done emitting all its value
 * __onDisposed__ : When subscriber is disposed
 
 _But, you doesn't need to handle all those condition when subscribing an observable_
 */
let disposeBag: DisposeBag = DisposeBag()


//: We also can create __Observable__ by creating events one-by-on on its ___Observer___

/*:
 ಠ_ಠ
 
 What do you mean by _Observer_? Also what the heck is ___Disposable___ that included over there?
 */

/*:
 [Next topic: __Subject__](@next)
 */
