//: [Previous: __Subject__](@previous)
//: # Operators
//: _Operator can be used for transforming or processing emitted value of observables._
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
import RxSwift

let number = PublishSubject<Int>()

/*:
 ### Map
 Transform an observable into another type of observable
 */

/*:
 ### Filter
 Returning only specific value
 */

/*:
 ### Reduce
 Similar with method _.reduce_ on Array, which returns combined value of its elements
 */

number.onNext(1)
number.onNext(2)
number.onNext(3)
number.onNext(4)
number.onNext(5)

/*:
 __Reminder__
 
 Observable won't emit it value if it is not subscribed !
 */
