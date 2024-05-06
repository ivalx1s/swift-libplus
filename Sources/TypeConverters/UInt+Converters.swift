import Foundation

public extension UInt {
    var asDouble: Double { Double(self) }
    var asInt: Int { Int(self) }
    var asDecimal: Decimal { Decimal(self) }
}