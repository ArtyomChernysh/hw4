import UIKit

let calculateFunction : (([(Int,String)])->([(Int,String)])) = { element in
    var arr = element.sorted(by:{$0.1<$1.1}).filter({$0.0%2==0}).compactMap({value in
            return (Int(pow(Double(value.0),2.0)),value.1)
    })
    return arr
}

var array = [(1, "x"), (4, "y"), (6, "a")]

print(calculateFunction(array))
