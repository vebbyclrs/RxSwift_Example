//: [Previous: __Introduction__](@previous)
//: # Subject
//: _An double-agent who can act as an observable __and__ also as an observer_
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
import RxSwift

/*:
 Simple subject that emitting some string.
 
 Check that it has its ___.on(event:)___ method, that can be called anywhere.
 
 Also, it can be subscribed directly via ___.subscribe(on:)___ ᕕ( ᐛ )ᕗ
 */
let newsSubject = PublishSubject<String>()

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
 There's another kind of subject: ReplaySubject.
 
 But we rarely using it, so it won't be covered in this subject. :(
 
 Reference for further information about it. [Reactivex.io Docs](http://reactivex.io/documentation/subject.html)
 */

//: [Next: __Operators__](@next)
