import Foundation

class A: NSObject, NSCoding {
    var b: B?

    func encode(with aCoder: NSCoder) {
        aCoder.encode(b, forKey: "b")
    }

    required init?(coder aDecoder: NSCoder) {
        b = aDecoder.decodeObject(forKey: "b") as? B
        super.init()
    }

    init(b: B?) {
        self.b = b
        super.init()
    }
}

class B: NSObject, NSCoding {
    func encode(with aCoder: NSCoder) {
        aCoder.encode(s, forKey: "s")
        aCoder.encode(d, forKey: "d")
    }

    required init?(coder aDecoder: NSCoder) {
        s = aDecoder.decodeObject(forKey: "s") as! String
        d = aDecoder.decodeObject(forKey: "d") as! [String: A]
        super.init()
    }

    override init() {
        super.init()
    }

    var s: String = ""
    var d: [String: A] = [:]
}

print("!!! Start")

let b_in = B()
b_in.d["0"] = A(b: b_in)
b_in.d["1"] = A(b: b_in)
let data = NSKeyedArchiver.archivedData(withRootObject: b_in)
print("!!! Encoded")
let b_out = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? B

print(b_out)
