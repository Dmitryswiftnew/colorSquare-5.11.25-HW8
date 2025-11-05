
import UIKit

class ViewController: UIViewController {
    
    var currentX: CGFloat = 0
    var currentY: CGFloat = 0
    
    let squareSize: CGFloat = 60
    
    @IBOutlet weak var pushMeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func pushMe(_ sender: UIButton) {
        
        createSquare()
        
    }
    
    func createSquare() {
        
       
        
        for _ in 0...Int.max {
            
            if currentY + squareSize > pushMeButton.frame.origin.y {
                return
            }
            let square = UIView()
            square.frame = CGRect(x: currentX, y: currentY, width: squareSize, height: squareSize)
            square.backgroundColor = randomColor()
            view.addSubview(square)
            
            currentX += squareSize // смещаемся в парво
            
            if currentX + squareSize > view.frame.width { // проверяем не выходит ли квадрат за правую границу экрана
                currentX = 0                             // если да, то корду Х обнуляем а по У + размер квадарата
                currentY += squareSize
                
                
              
            }
            
        }
        
        
    }
    
    func randomColor() -> UIColor {
        let r = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let g = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let b = CGFloat(arc4random()) / CGFloat(UInt32.max)
        
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
        
    }
    
}

