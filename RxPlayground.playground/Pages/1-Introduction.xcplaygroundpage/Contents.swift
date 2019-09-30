/*:
 # Introduction into Observable
 _PS: ßPlease build RxExample scheme first, using Cmd + B_
 */
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
import RxSwift

//: Observable will emitting its value, one-by-one
let number = Observable.of("satu", "dua", "tiga")
let arrOfNumber = Observable.of(["satu", "dua", "tiga"])

/*:
 Subscribing an observable will has 4 condition:
 * **onNext** : When observable is emitting each of its value
 * **onError** : When an error is happen during emitting/subscribing
 * **onCompleted** : When observable is done emitting all its value
 * **onDisposed** : When subscriber is disposed (will be explained more for later)
 
 _But, you doesn't need to handle all those condition when subscribing an observable_
 */
number.asObservable()
    .subscribe(
        onNext: { print($0) },
        onError: { print($0) },
        onCompleted: { print("complete") },
        onDisposed: { print("disposed") }
)

arrOfNumber.asObservable().subscribe(onNext: { value in
    print(value)
})
/*:
 [Next topic: **Subject**](@next)
 */
