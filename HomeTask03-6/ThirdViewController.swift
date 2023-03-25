import UIKit
import SnapKit

class ThirdViewController: UIViewController {
    
    var newValue: String?
    
    private let image: UIImageView = {
        let mainImage = UIImageView()
        mainImage.image = UIImage(named: "image")
        return mainImage
    }()
    
    private let mainLabel: UILabel  = {
        let mainLbl = UILabel()
        mainLbl.text = "Forgot Password"
        mainLbl.textColor = .white
        mainLbl.font = .boldSystemFont(ofSize: 28)
        return mainLbl
    }()
    
    private let emailLabel: UILabel = {
        let infoLbl = UILabel()
        infoLbl.text = "Enter your Email"
        infoLbl.textColor = .white
        infoLbl.font = .systemFont(ofSize: 20)
        return infoLbl
    }()
    
    private var emailTextField: UITextField = {
      var userNameTF = UITextField()
        userNameTF.placeholder = "User Name"
        userNameTF.layer.cornerRadius = 6
        userNameTF.backgroundColor = .white
        return userNameTF
    }()
    
    private let chooseButton: UIButton = {
        let chooseBtn = UIButton()
        chooseBtn.setTitle("Choose another method", for: .normal)
        chooseBtn.tintColor = .gray
        return chooseBtn
    }()
    
    private let helpButton: UIButton = {
        let helpBtn = UIButton()
        helpBtn.setTitle("Need Help?", for: .normal)
        helpBtn.tintColor = .white
        return helpBtn
    }()
    
    private let sendOtpButton: UIButton = {
        let otpBtn = UIButton()
        otpBtn.setTitle("Send OTP", for: .normal)
        otpBtn.layer.backgroundColor = UIColor.tintColor.cgColor
        otpBtn.layer.cornerRadius = 18
        return otpBtn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        initUi()

    }
    
    func initUi() {
        
        view.addSubview(image)
        view.addSubview(mainLabel)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(chooseButton)
        view.addSubview(helpButton)
        view.addSubview(sendOtpButton)
        emailTextField.text = newValue
        
        image.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(0)
            make.leading.trailing.equalToSuperview().inset(0)
            make.height.equalTo(200)
        }
        
        mainLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(image.snp.bottom).offset(32)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(28)
            make.top.equalTo(mainLabel.snp.bottom).offset(60)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(28)
            make.top.equalTo(emailLabel.snp.bottom).offset(8)
            make.height.equalTo(48)
        }
        
        chooseButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(28)
            make.top.equalTo(emailTextField.snp.bottom).offset(8)
        }
        
        helpButton.snp.makeConstraints { make in
            make.trailing.equalTo(emailTextField.snp.trailing)
            make.centerY.equalTo(chooseButton)
        }
        
        sendOtpButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-300)
            make.height.equalTo(48)
            make.width.equalTo(280)
        }
    }
}
