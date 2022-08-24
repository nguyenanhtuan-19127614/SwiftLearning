import UIKit
import RxSwift

let helloRx = Observable.just("print")
helloRx.subscribe { element in
    print("hello ")
}


