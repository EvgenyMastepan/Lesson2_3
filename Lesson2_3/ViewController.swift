//
//  ViewController.swift
//  Lesson2_3
//
//  Created by Evgeny Mastepan on 22.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let firstText = "Сервис квартирных решений от сделки до отделки"
    
    let leftIndent: CGFloat = 20
    let topIndent: CGFloat = 20
    let textLeading: CGFloat = 11

    lazy var blueContainerView: UIView = {
        $0.backgroundColor = .systemBlue
        $0.frame = CGRect(x: view.frame.minX, y: view.frame.minY, width: view.frame.maxX, height: view.frame.maxY / 3)
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
    
    lazy var whiteContainerView: UIView = {
        $0.backgroundColor = .white
        $0.frame = CGRect(x: leftIndent,
                          y: firstLabel.frame.maxY + topIndent,
                          width: blueContainerView.frame.maxX - leftIndent - leftIndent,
                          height: blueContainerView.frame.maxY - firstLabel.frame.maxY - topIndent - topIndent)
        $0.layer.cornerRadius = 10
        return $0
    }(UIView())
    
    lazy var firstLabel = setFirstLineTextLabel(text: firstText,
                                               frame: CGRect(x: blueContainerView.frame.minX + leftIndent,
                                                             y: logoImage.frame.maxY + topIndent,
                                                             width: blueContainerView.frame.maxX - leftIndent - leftIndent,
                                                             height: 56),
                                               color: .white)
    
    lazy var serviceLabel = setFirstLineTextLabel(text: "Услуги",
                                                  frame: CGRect(x: leftIndent,
                                                                y: blueContainerView.frame.maxY + topIndent,
                                                                width: view.frame.maxX - leftIndent - leftIndent,
                                                                height: 50),
                                                  color: .black)
    
    lazy var liveComplexLabel = setFirstLineTextLabel(text: "Жилые комплексы",
                                                  frame: CGRect(x: leftIndent,
                                                                y: grayContainerView.frame.maxY + topIndent,
                                                                width: view.frame.maxX - leftIndent - leftIndent,
                                                                height: 20),
                                                  color: .black)
    
    lazy var grayContainerView: UIView = {
        $0.backgroundColor = .systemGray4
        $0.frame = CGRect(x: leftIndent,
                          y: serviceLabel.frame.maxY + topIndent,
                          width: view.frame.maxX - leftIndent - leftIndent,
                          height: 95)
        $0.layer.cornerRadius = 10
        return $0
    }(UIView())
    
    lazy var lightGrayContainerView: UIView = {
        $0.backgroundColor = .systemGray6
        $0.frame = CGRect(x: leftIndent,
                          y: liveComplexLabel.frame.maxY + topIndent,
                          width: view.frame.maxX - leftIndent - leftIndent,
                          height: 199)
        $0.layer.cornerRadius = 10
        return $0
    }(UIView())
    
    lazy var fillImage: UIImageView = {
        $0.image = UIImage(named: "house")
        $0.contentMode = .scaleAspectFill
        $0.frame = CGRect(x: 0,
                          y: 0,
                          width: lightGrayContainerView.frame.maxX - leftIndent,
                          height: 122)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        return $0
    }(UIImageView())
    
    lazy var buyLabel = setMainTextLabel(text: "Купить",
                                              frame: CGRect(x: leftIndent,
                                                            y: leftIndent,
                                                            width: 50,
                                                            height: textLeading), bold: true)
    
    lazy var transitionLabel = setMainTextLabel(text: ">",
                                               frame: CGRect(x: whiteContainerView.frame.maxX - leftIndent - leftIndent,
                                                            y: leftIndent,
                                                            width: textLeading,
                                                            height: textLeading), bold: true)
    
    lazy var descriptionOfBuyLabel = setMainTextLabel(text: "Подберем подходящий объект",
                                                   frame: CGRect(x: leftIndent,
                                                                 y: buyLabel.frame.maxY + textLeading,
                                                                 width: 225,
                                                                 height: textLeading), bold: false)
    
    lazy var insuranceTitleLabel = setMainTextLabel(text: "Страхование",
                                                    frame: CGRect(x: leftIndent,
                                                                  y: topIndent,
                                                                  width: grayContainerView.frame.maxX - leftIndent - leftIndent,
                                                                  height: textLeading), bold: true)
    
    lazy var insuranceMainLabel = setMainTextLabel(text: "Защитите имущество, здоровье и жизнь",
                                                   frame: CGRect(x: leftIndent,
                                                                 y: insuranceTitleLabel.frame.maxY + textLeading,
                                                                 width: 150,
                                                                 height: 32), bold: false)
    
    lazy var nameOfObjectLabel = setMainTextLabel(text: "Ольховый квартал",
                                                    frame: CGRect(x: leftIndent,
                                                                  y: fillImage.frame.maxY + textLeading,
                                                                  width: lightGrayContainerView.frame.maxX - leftIndent - leftIndent,
                                                                  height: textLeading), bold: true)
    
    lazy var priceOfPbject = setMainTextLabel(text: "от 8 029 445 ₽",
                                              frame: CGRect(x: leftIndent,
                                                            y: nameOfObjectLabel.frame.maxY + textLeading,
                                                            width: lightGrayContainerView.frame.maxX - leftIndent - leftIndent,
                                                            height: textLeading), bold: true)
    
    lazy var descriptionOfObject = setMainTextLabel(text: "Москва, поселение Сосенское, деревня Столбово",
                                                   frame: CGRect(x: leftIndent,
                                                                 y: priceOfPbject.frame.maxY + textLeading,
                                                                 width: lightGrayContainerView.frame.maxX - leftIndent - leftIndent,
                                                                 height: textLeading), bold: false)
    
    private lazy var transitionButton: UIButton = {
        $0.frame = CGRect(x: leftIndent,
                          y: firstLabel.frame.maxY + topIndent,
                          width: blueContainerView.frame.maxX - leftIndent - leftIndent,
                          height: blueContainerView.frame.maxY - firstLabel.frame.maxY - topIndent - topIndent)
        $0.layer.cornerRadius = 10
        $0.isOpaque = true
        return $0
    }(UIButton(primaryAction: UIAction(handler: { [weak self]_ in
        let vc = SecondViewController()
        self?.navigationController?.pushViewController(vc, animated: true)
    })))
    
        
    override func viewDidLoad() {
        view.backgroundColor = .white
        super.viewDidLoad()
        
        view.addSubview(blueContainerView)
        blueContainerView.addSubview(logoImage)
        blueContainerView.addSubview(firstLabel)
        blueContainerView.addSubview(whiteContainerView)
        whiteContainerView.addSubview(buyLabel)
        whiteContainerView.addSubview(descriptionOfBuyLabel)
        whiteContainerView.addSubview(transitionLabel)
        blueContainerView.addSubview(transitionButton)
        view.addSubview(serviceLabel)
        view.addSubview(grayContainerView)
        grayContainerView.addSubview(insuranceTitleLabel)
        grayContainerView.addSubview(insuranceMainLabel)
        view.addSubview(liveComplexLabel)
        view.addSubview(lightGrayContainerView)
        lightGrayContainerView.addSubview(fillImage)
        lightGrayContainerView.addSubview(nameOfObjectLabel)
        lightGrayContainerView.addSubview(priceOfPbject)
        lightGrayContainerView.addSubview(descriptionOfObject)
        
    }

    func setFirstLineTextLabel(text: String, frame: CGRect, color: UIColor) -> UILabel {
        let textLine = UILabel()
        textLine.text = text
        textLine.frame = frame
        textLine.textColor = color
        textLine.numberOfLines = 0
        textLine.font = UIFont.systemFont(ofSize: 22, weight: .heavy)
        return textLine
    }
    
    func setMainTextLabel(text: String, frame: CGRect, bold: Bool) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = .black
        label.numberOfLines = 0
        label.frame = frame
        if bold { label.font = UIFont.systemFont(ofSize: 13, weight: .heavy) }
           else { label.font = UIFont.systemFont(ofSize: 13) }
        return label
    }
    
}

