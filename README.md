# apptimize-crash-test
investigation of crash with apptimize sdk

**The crash appears under the fopllowing Pre-Conditions:**

- Obj-C supported project
- `Info.plist`
  - don't forget to set the `ApptimizeAppKey` value
  - key `ApptimizeEnableThirdPartyEventExporting` must have value `1`
- dependencies:
  - Localytics sdk embedded
- running on device or simulator with iOS 15.5
- Xcode 13.4.x or higher
- at runtime calling `ApptimizeVariable.makeString(name: "some variable, defaultString: "")?.stringValue`

If all those conditions are met, here comes the one extension which actually causes the crash:

```
extension NSObject {
  @objc public class var name: String { String(describing: self.self) }
}
```

**removing the @objc annotation from the extension fixes the crash.**