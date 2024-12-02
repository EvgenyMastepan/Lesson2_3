//
//  SecondViewController.swift
//  Lesson2_3
//
//  Created by Evgeny Mastepan on 02.12.2024.
//

import UIKit

class SecondViewController: UIViewController {

    let leftIndent: CGFloat = 20
    let topIndent: CGFloat = 35
    let textLeading: CGFloat = 11

    lazy var blueContainerView: UIView = {
        $0.backgroundColor = .systemBlue
        $0.frame = CGRect(x: view.frame.minX, y: view.frame.minY, width: view.frame.maxX, height: view.frame.maxY)
        return $0
    }(UIView())
    
    lazy var logoImage: UIImageView = {
        $0.image = UIImage(named: "logo")
        $0.contentMode = .scaleAspectFit
        $0.frame = CGRect(x: blueContainerView.frame.minX + leftIndent,
                          y: blueContainerView.frame.minY + 55,
                          width: 92, height: 35)
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    lazy var firstLabel: UILabel = {
        $0.text = "Ольховый квартал"
        $0.frame = CGRect(x: leftIndent,
                          y: logoImage.frame.maxY + topIndent,
                          width: blueContainerView.frame.maxX - leftIndent - leftIndent,
                          height: 28)
        $0.textColor = .white
        $0.numberOfLines = 0
        $0.font = UIFont.systemFont(ofSize: 22, weight: .heavy)
        
        return $0
    }(UILabel())
    
    lazy var fillImage: UIImageView = {
        $0.image = UIImage(named: "house")
        $0.contentMode = .scaleAspectFill
        $0.frame = CGRect(x: leftIndent,
                          y: firstLabel.frame.maxY + topIndent,
                          width: blueContainerView.frame.maxX - leftIndent - leftIndent,
                          height: 240)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        return $0
    }(UIImageView())
    
    lazy var priceOfPbject = setMainTextLabel(text: "от 8 029 445 ₽",
                                              frame: CGRect(x: leftIndent,
                                                            y: fillImage.frame.maxY + textLeading,
                                                            width: blueContainerView.frame.maxX - leftIndent - leftIndent,
                                                            height: textLeading), bold: true)
    
    lazy var descriptionOfObject = setMainTextLabel(text: "Москва, поселение Сосенское, деревня Столбово",
                                                   frame: CGRect(x: leftIndent,
                                                                 y: priceOfPbject.frame.maxY + textLeading,
                                                                 width: blueContainerView.frame.maxX - leftIndent - leftIndent,
                                                                 height: textLeading), bold: false)

    lazy var transitionButton: UIButton = {
        $0.frame = CGRect(x: 0,
                          y: 0,
                          width: view.frame.maxY,
                          height: view.frame.maxX)
        $0.isOpaque = true
        return $0
    }(UIButton(primaryAction: UIAction(handler: { [weak self]_ in
        self?.navigationController?.popViewController(animated: true)
    })))
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        super.viewDidLoad()
        
        view.addSubview(blueContainerView)
        blueContainerView.addSubview(logoImage)
        blueContainerView.addSubview(firstLabel)
        blueContainerView.addSubview(fillImage)
        blueContainerView.addSubview(priceOfPbject)
        blueContainerView.addSubview(descriptionOfObject)
        
        view.addSubview(transitionButton)
    }

    func setMainTextLabel(text: String, frame: CGRect, bold: Bool) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = .white
        label.numberOfLines = 0
        label.frame = frame
        if bold { label.font = UIFont.systemFont(ofSize: 13, weight: .heavy) }
           else { label.font = UIFont.systemFont(ofSize: 13) }
        return label
    }
}
