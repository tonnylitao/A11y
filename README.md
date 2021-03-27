# A11y

http://github.com/tonnylitao/A11y

A swift package to simplify accessibility programming

### set accessibility identifiers for views with Mirror

```swift
import A11y

class ViewController: UIViewController {
    @IBOutlet weak nameField: UITextField!
    @IBOutlet weak emailField: UITextField!

    func viewDidLoad() {
        super.viewDidLoad()

        generateA11yIdentifiers()
        //nameField's identifier is string of nameField
        //emailField's identifier is string of emailField 
    }
}
```

### set accessibility identifier for view

```swift
import A11y

nameLbl.setA11yIdentifier("user_name")
```
