//: [Previous: **Introduction**](@previous)
//: # Subject
//: _An double-agent who can act as an observable and also as an observer_
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
import RxSwift

/*:
 Simple subject that emitting some string.
 Check that it has its _**on(event:)**_ method
 */
let newsSubject = PublishSubject<String>()

/*:
 There are 3 type of subject:
 * PublishSubject
 * BehaviorSubject
 * ReplaySubject
 */

/*:
 Let's start with PublishSubject:
 
 _This subject, will only emits new elements to its subscriber_
 */
let publish = PublishSubject<String>()
/*:
Next is BehaviorSubject:

_BehaviorSubject needs an initial value, and it'll emit latest value (and all new elements) to its subscriber_
*/
let behavior = BehaviorSubject<String>(value: "Initial")
//: Also, an advantage for BehaviorSubject is that you can get it last value by using _value()_ method

/*:
And last is ReplaySubject:

_ReplaySubject init with **buffer size**, and it will replaying its previous value, based on its buffer size_
*/
let replay = ReplaySubject<String>.create(bufferSize: 2)
//: [Next: **Operators**](@next)
