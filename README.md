# Swift-Switch

this is a تلزيك Switch for a client 

## Demo

![](https://media.giphy.com/media/l0Iyh3u30wsBV0WSk/giphy.gif)

## Usage

```
let swit = SliderSwitch()

override func viewDidLoad() {
    super.viewDidLoad()
  
    swit.backColor = .black
    swit.cornerRadius = 5.0
    swit.switchImage = UIImage(named: "switch2")!
    swit.isOFFmage = UIImage(named: "OFF")!
    swit.isONImage = UIImage(named: "ON")!
    
    swit.valueDidChange = { (st: Bool) -> () in
            if st {
                print("Switch ON")
            } else {
                print("Switch OFF")
            }
        }
}
```

## PS

check the DEMO for full code

## Things To Add

NOTHING LOL

## License

Swift-Talzek-Switch is available under the MIT license
