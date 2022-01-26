import UIKit

public struct FPNCountry: Equatable {

	public var code: FPNCountryCode
	public var name: String
	public var phoneCode: String
	var flag: UIImage?

	init(code: String, name: String, phoneCode: String) {
		self.name = name
		self.phoneCode = phoneCode
		self.code = FPNCountryCode(rawValue: code)!
        let bundle = "Resources/FlagKit.bundle/"
		if let flag = UIImage(named: bundle + code + ".png", in: Bundle.FlagIcons, compatibleWith: nil) {
			self.flag = flag
		} else {
			self.flag = UIImage(named: bundle + "unknown" + ".png", in: Bundle.FlagIcons, compatibleWith: nil)
		}
	}

	static public func ==(lhs: FPNCountry, rhs: FPNCountry) -> Bool {
		return lhs.code == rhs.code
	}
}
