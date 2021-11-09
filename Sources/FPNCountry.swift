import UIKit

@objc public class FPNCountry: NSObject {

	public var code: FPNCountryCode
	@objc public var name: String
	@objc public var phoneCode: String
	@objc public var flag: UIImage?

	init(code: String, name: String, phoneCode: String) {
		self.name = name
		self.phoneCode = phoneCode
		self.code = FPNCountryCode(rawValue: code)!

		if let flag = UIImage(named: code, in: Bundle.FlagIcons, compatibleWith: nil) {
			self.flag = flag
		} else {
			self.flag = UIImage(named: "unknown", in: Bundle.FlagIcons, compatibleWith: nil)
		}
	}

	static public func ==(lhs: FPNCountry, rhs: FPNCountry) -> Bool {
		return lhs.code == rhs.code
	}
}
