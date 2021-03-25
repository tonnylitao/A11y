# A11y
http://github.com/tonnylitao/A11y

A swift package to simplify accessibility programming
    
###  set accessibility identifiers for controller's named views as their name

```swift
class ViewController: UIViewController {
    @IBOutlet weak nameField: UITextField!
 
    func viewDidLoad() {
        super.viewDidLoad()
        
        setA11yIdentifiers()
        //nameField's identifier is string of nameField
    }
}
```

###  set accessibility identifier for view

```swift
nameLbl.setA11yIdentifier("user_name")
```
 