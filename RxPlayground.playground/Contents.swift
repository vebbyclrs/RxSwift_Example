import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
import RxSwift

//let disposeBag = DisposeBag()
//let number = Observable<String>.of("satu","dua","tiga")
////let number = Observable<[String]>.of(["satu","dua","tiga"])
//
//number.subscribe(onNext: { (value) in
//   print (value)
//}, onError: { (error) in //nangkep error
//   print (error)
//}, onCompleted: { //nangkep kapan dia  complete
//   print ("complete")
//}, onDisposed: {
//   print ("disposed")
//   }).disposed(by: disposeBag)



//let disposeBag = DisposeBag()
//let number = PublishSubject<String>() //Publish Subject dia  double agent, observable dan observer
//
//number.subscribe(onNext: { (value) in
//   print ("hahaha: \(value)")
//   }).disposed(by: disposeBag)
//
//number.onNext("satu")
//print ("wkwkwk - hihi")
//number.onNext("dua")



//let disposeBag = DisposeBag()
//let number = PublishSubject<String>()
//
//number.subscribe(onNext: { (value) in
//   print ("hahaha: \(value)")
//}, onDisposed: {
//   print ("kedisposed nih.")
//   }).disposed(by: disposeBag)
//
//number.onNext("satu")
//print ("wkwkwk - hihi")
//number.onNext("dua")
//number.onCompleted() //dispose nya  manual
//number.onNext("abis  ke disposed keluar ga nih") //ga doong




let disposeBag = DisposeBag()
let number = PublishSubject<String>()

number.subscribe(onNext: { (value) in
   print ("hahaha: \(value)")
}, onDisposed: {
   print ("kedisposed nih.")
   }).disposed(by: disposeBag)

number.onNext("satu")
print ("wkwkwk - hihi")
number.onNext("dua")
number.onCompleted() //dispose nya  manual
number.onNext("abis  ke disposed keluar ga nih") //ga doong



