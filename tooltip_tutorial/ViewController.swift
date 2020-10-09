//
//  ViewController.swift
//  tooltip_tutorial
//
//  Created by Jeff Jeong on 2020/10/09.
//

import UIKit
import EasyTipView


class ViewController: UIViewController {

    @IBOutlet var centerBtn: UIButton!
    @IBOutlet var topLeadingBtn: UIButton!
    @IBOutlet var topTrailingBtn: UIButton!
    @IBOutlet var bottomLeadingBtn: UIButton!
    @IBOutlet var bottomTrailingBtn: UIButton!
    
    lazy var centerToolTip = EasyTipView(text: "")
    lazy var topLeadingToolTip = EasyTipView(text: "")
    lazy var topTrailingToolTip = EasyTipView(text: "")
    lazy var bottomLeadingTip = EasyTipView(text: "")
    lazy var bottomTrailingToolTip = EasyTipView(text: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func onBtnClicked(sender: UIButton){
        print("ViewController - onBtnClicked() called")
        switch sender {
        case self.centerBtn:
            print("센터 버튼이 클릭되었다!")
            
            // 툴팁 설정
            var preferences = EasyTipView.Preferences()
            preferences.drawing.font = UIFont.boldSystemFont(ofSize: 20)
            preferences.drawing.foregroundColor = .white
            preferences.drawing.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            preferences.drawing.arrowPosition = .top
            
            centerToolTip = EasyTipView(text: "안녕하세요?! \n오늘도 빡코딩하고 계신가요?! 🔥👨‍💻", preferences: preferences, delegate: self)
            centerToolTip.show(forView: self.centerBtn, withinSuperview: self.view)
            
        case self.topLeadingBtn:
            print("탑 리딩 버튼이 클릭되었다!")
            // 툴팁 설정
            var preferences = EasyTipView.Preferences()
            preferences.drawing.font = UIFont.boldSystemFont(ofSize: 20)
            preferences.drawing.foregroundColor = .white
            preferences.drawing.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            preferences.drawing.arrowPosition = .top
            preferences.drawing.textAlignment = .right
            
            preferences.animating.dismissDuration = 1
            preferences.animating.dismissTransform = CGAffineTransform(translationX: 0, y: 100)
            preferences.animating.showInitialTransform = CGAffineTransform(translationX: 0, y: 100)
            preferences.animating.showInitialAlpha = 1
            preferences.animating.dismissFinalAlpha = 0
            preferences.animating.showDuration = 1
            
            topLeadingToolTip = EasyTipView(text: "하하하 호호호 ", preferences: preferences, delegate: self)
            topLeadingToolTip.show(forView: self.topLeadingBtn, withinSuperview: self.view)
            
        case self.topTrailingBtn:
            print("탑 트레일링 버튼이 클릭되었다!")
            // 툴팁 설정
            var preferences = EasyTipView.Preferences()
            preferences.drawing.font = UIFont.boldSystemFont(ofSize: 20)
            preferences.drawing.foregroundColor = .white
            preferences.drawing.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            preferences.drawing.arrowPosition = .bottom
            preferences.drawing.textAlignment = .right
            
            preferences.animating.dismissDuration = 1
            preferences.animating.dismissTransform = CGAffineTransform(translationX: 0, y: -100)
            preferences.animating.showInitialTransform = CGAffineTransform(translationX: 0, y: -100)
            preferences.animating.showInitialAlpha = 0
            preferences.animating.dismissFinalAlpha = 0
            preferences.animating.showDuration = 1
            
            topTrailingToolTip = EasyTipView(text: "하하하 호호호 ", preferences: preferences, delegate: self)
            topTrailingToolTip.show(forView: self.topTrailingBtn, withinSuperview: self.view)
            
        case self.bottomLeadingBtn:
            print("바텀 리딩 버튼이 클릭되었다!")
            // 툴팁 설정
            var preferences = EasyTipView.Preferences()
            preferences.drawing.font = UIFont.boldSystemFont(ofSize: 20)
            preferences.drawing.foregroundColor = .white
            preferences.drawing.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            preferences.drawing.arrowPosition = .right
            preferences.drawing.textAlignment = .right
            preferences.positioning.maxWidth = 300
            
            preferences.animating.dismissDuration = 1
            preferences.animating.dismissTransform = CGAffineTransform(translationX: 100, y: 0)
            preferences.animating.showInitialTransform = CGAffineTransform(translationX: 100, y: 0)
            preferences.animating.showInitialAlpha = 0
            preferences.animating.dismissFinalAlpha = 0
            preferences.animating.showDuration = 1
            
            bottomLeadingTip = EasyTipView(text: "하하하 호호호 ", preferences: preferences, delegate: self)
            bottomLeadingTip.show(forView: self.bottomLeadingBtn, withinSuperview: self.view)
        case self.bottomTrailingBtn:
            print("바텀 트레일링 버튼이 클릭되었다!")
            // 툴팁 설정
            var preferences = EasyTipView.globalPreferences
//            preferences.drawing.backgroundColor = bottomRightBtn.backgroundColor!
            preferences.drawing.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            preferences.drawing.borderWidth = 10
            preferences.drawing.borderColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)

            preferences.animating.dismissTransform = CGAffineTransform(translationX: 0, y: -15)
            preferences.animating.showInitialTransform = CGAffineTransform(translationX: 0, y: 15)
            preferences.animating.showInitialAlpha = 0
            preferences.animating.showDuration = 1
            preferences.animating.dismissDuration = 1
            preferences.drawing.arrowPosition = .top
            
            // 패딩
            preferences.positioning.contentHInset = 5
            preferences.positioning.contentVInset = 5
            
            let contentView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
            contentView.image = UIImage(named: "dev_jeongDaeRi")
            
            bottomTrailingToolTip = EasyTipView(contentView: contentView, preferences: preferences, delegate: self)
            
            bottomTrailingToolTip.show(forView: self.bottomTrailingBtn)
            
        default:
            print("default")
        }
    }

}

extension ViewController: EasyTipViewDelegate {
    func easyTipViewDidDismiss(_ tipView: EasyTipView) {
        print("툴팁이 닫혔다.")
        switch tipView {
        case self.centerToolTip:
            print("선터툴팁이 닫혔다")
        case self.topLeadingToolTip:
            print("탑 리딩 툴팁이 닫혔다")
        case self.topTrailingToolTip:
            print("탑 트레일링 툴팁이 닫혔다")
        case self.bottomLeadingTip:
            print("바텀 리딩 툴팁이 닫혔다")
        case self.bottomTrailingToolTip:
            print("바텀 트레일링 툴팁이 닫혔다")
        default:
            return
        }
    }
}
