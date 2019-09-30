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

newsSubject
    .subscribe(onNext: { (newsTitle) in
        print(newsTitle)
    })

newsSubject.onNext("Hear ye, hear ye...")
newsSubject.onNext("Big news today!")

/*:
 There are 3 type of subject:
 * PublishSubject
 * BehaviorSubject
 * ReplaySubject
 */
print("==============================")
/*:
 Let's start with PublishSubject:
 
 _This subject, will only emits new elements to its subscriber_
 */
let publish = PublishSubject<String>()
publish.onNext("Pertama")
publish.onNext("Kedua")
publish.onNext("Ketiga")

publish.subscribe(onNext: { print("publish - \($0)") })

publish.onNext("Keempat")
publish.onNext("Kelima")

print("==============================")
/*:
Next is BehaviorSubject:

_BehaviorSubject needs an initial value, and it'll emit latest value (and all new elements) to its subscriber_
*/
let behavior = BehaviorSubject<String>(value: "Initial")
behavior.onNext("Pertama")
behavior.onNext("Kedua")
behavior.onNext("Ketiga")

behavior.subscribe(onNext: { print("behavior - \($0)") })

behavior.onNext("Keempat")
behavior.onNext("Kelima")
// notes about BehaviorSubject.value()

print("==============================")
/*:
And last is ReplaySubject:

_ReplaySubject init with **buffer size**, and it will replaying its previous value, based on its buffer size_
*/
let replay = ReplaySubject<String>.create(bufferSize: 2)
replay.onNext("Pertama")
replay.onNext("Kedua")
replay.onNext("Ketiga")

replay.subscribe(onNext: { print("replay - \($0)") })

replay.onNext("Keempat")
replay.onNext("Kelima")

//: [Next: **Operators**](@next)
