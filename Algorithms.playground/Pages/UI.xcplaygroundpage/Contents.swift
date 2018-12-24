//: [Previous](@previous)

import Foundation


//: [Next](@next)

import UIKit

import PlaygroundSupport

class Extendedlabel: UILabel {
    
    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        let height = size.height + 10
        self.layer.cornerRadius = height/2
        self.layer.masksToBounds = true
        return CGSize(width: size.width + 50, height: height)
    }
}
class MyViewController : UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.title = "Home"
        let label = UILabel()
        label.text = "Hello World!"
        label.textColor = .black
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 40)
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let label2 = UILabel()
        label2.text = "Hello World 2!"
        label2.textColor = .black
        
        view.addSubview(label2)
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //textfield
        let margins = view.layoutMarginsGuide
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.setTitle("showNext", for: .normal)
        button.addTarget(self, action: #selector(showSecond(_:)), for: .touchUpInside)
        button.layer.cornerRadius = 4
        button.layer.borderColor = UIColor.green.cgColor
        button.layer.borderWidth = 1
        
        view.addSubview(button)
        
        button.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        button.topAnchor.constraint(equalTo: margins.topAnchor, constant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        self.view = view
        addLables(to: view)
        
        
    }
    @objc func showSecond(_ sender: UIButton) -> Void {
        let secondVc = SecondVc()
        self.navigationController?.pushViewController(secondVc, animated: true)
        print("button clicked")
    }
    func addLables(to view:UIView) {
        //VFL Visual format language
        func addlabel(with text:String, color:UIColor) -> UILabel {
            let label = Extendedlabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.backgroundColor =  color
            label.text = text
            label.textAlignment = .center
            label.sizeToFit()
            view.addSubview(label)
            return label
        }
        let label1 = addlabel(with: "THESE", color: .red)
        let label2 = addlabel(with: "ARE", color: .cyan)
        let label3 = addlabel(with: "SOME", color: .yellow)
        let label4 = addlabel(with: "AWESOME", color: .green)
        let label5 = addlabel(with: "LABELS", color: .orange)
        
        let viewsDictionary = ["label1": label1, "label2": label2, "label3": label3, "label4": label4, "label5": label5]
        
        for label in viewsDictionary.keys {
            view.addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "H:|-[\(label)]-|", options: [], metrics: nil, views: viewsDictionary))
        }
        view.addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "V:[label1]-10-[label2]-10-[label3]-[label4]-10-[label5]-10-|", options: [], metrics: nil, views: viewsDictionary))
        
    }
}

class SecondVc: UIViewController {
    override func loadView() {
        super.loadView()
        let view = UIView()
        view.backgroundColor = .green
        self.view = view
        self.title = "Second"
    }
}
// Present the view controller in the Live View window
let controller = MyViewController()
let nav = UINavigationController(rootViewController: controller)
PlaygroundPage.current.liveView = nav


