import UIKit
import RxSwift

let observable = Observable<Void>.empty()
   
observable.subscribe(
  onNext: { element in
    print(element)
},
  onCompleted: {
    print("Completed")
  }
)

