import UIKit
import PlaygroundSupport
import RxCocoa
import RxSwift

var str = "Hello, playground"
let signUpButton = UIButton()
signUpButton.setTitle("Tap me!", for: .normal)
signUpButton.sizeToFit()

let didTapSignUp = PublishSubject<Void>()

signUpButton.rx.tap.subscribe(didTapSignUp)

didTapSignUp.subscribe { _ in
    print("I got tapped!")
}

PlaygroundPage.current.liveView = signUpButton
