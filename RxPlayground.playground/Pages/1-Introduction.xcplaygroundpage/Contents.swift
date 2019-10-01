/*:
 # Introduction into Observable
 _PS: Please build RxExample scheme first, using Cmd + B_
 */
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
import RxSwift

//: Observable will emitting its value, one-by-one
/// Observable that will emit three values
let number = Observable.of("satu", "dua", "tiga")
/// Observable that will emitting integer, starting from 0 for every seconds
let timer = Observable<Int>
    .timer(RxTimeInterval.seconds(1),
           period: RxTimeInterval.seconds(1),
           scheduler: MainScheduler.instance)

/*:
 Subscribing an observable will has 4 condition:
 * **onNext** : When observable is emitting each of its value
 * **onError** : When an error is happen during emitting/subscribing
 * **onCompleted** : When observable is done emitting all its value
 * **onDisposed** : When subscriber is disposed (will be explained more for later)
 
 _But, you doesn't need to handle all those condition when subscribing an observable_
 */
number.subscribe(
        onNext: { print($0) },
        onError: { print($0) },
        onCompleted: { print("complete") },
        onDisposed: { print("disposed") }
)

timer.subscribe(onNext: { (value) in
    print("angka: \(value)")
})
/*:
 [Next topic: **Subject**](@next)
 */
