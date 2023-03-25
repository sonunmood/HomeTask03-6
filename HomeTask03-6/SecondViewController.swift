import UIKit
import SnapKit

class SecondViewController: UIViewController {
    
    private let image: UIImageView = {
        let mainImage = UIImageView()
        mainImage.image = UIImage(named: "image")
        return mainImage
    }()
    
    private let registerLabel: UILabel  = {
        let registerLbl = UILabel()
        registerLbl.text = "Register"
        registerLbl.textColor = .white
        registerLbl.font = .boldSystemFont(ofSize: 28)
        return registerLbl
    }()
    
    private let infoLabel: UILabel = {
        let infoLbl = UILabel()
        infoLbl.text = "Create a new account"
        infoLbl.textColor = .white
        infoLbl.font = .systemFont(ofSize: 20)
        return infoLbl
    }()
    
    private let usernameLabel: UILabel = {
        let userNameLbl = UILabel()
        userNameLbl.text = "User Name"
        userNameLbl.font = .systemFont(ofSize: 18)
        userNameLbl.textColor = .white
        return userNameLbl
    }()
    
    private let emailLabel: UILabel = {
        let emailLbl = UILabel()
        emailLbl.text = "Email"
        emailLbl.font = .systemFont(ofSize: 18)
        emailLbl.textColor = .white
        return emailLbl
    }()
    
    private let mobileNumberLabel: UILabel = {
        let mobileNumberLbl = UILabel()
        mobileNumberLbl.text = "Mobile Number"
        mobileNumberLbl.font = .systemFont(ofSize: 18)
        mobileNumberLbl.textColor = .white
        return mobileNumberLbl
    }()
    
    private let passwordLabel: UILabel = {
        let passwordLbl = UILabel()
        passwordLbl.text = "Password"
        passwordLbl.font = .systemFont(ofSize: 18)
        passwordLbl.textColor = .white
        return passwordLbl
    }()
    
    private var userNameTextField: UITextField = {
      var userNameTF = UITextField()
        userNameTF.placeholder = "User Name"
        userNameTF.layer.cornerRadius = 6
        userNameTF.backgroundColor = .white
        return userNameTF
    }()
    
    private var emailTextField: UITextField = {
      var emailTF = UITextField()
        emailTF.placeholder = "Email"
        emailTF.layer.cornerRadius = 6
        emailTF.backgroundColor = .white
        return emailTF
    }()
    
    private var mobileNumberTextField: UITextField = {
      var mobileNumberTF = UITextField()
        mobileNumberTF.placeholder = "Mobile Number"
        mobileNumberTF.layer.cornerRadius = 6
        mobileNumberTF.backgroundColor = .white
        return mobileNumberTF
    }()
    
    private var passwordTextField: UITextField = {
        var passwordTF = UITextField()
        passwordTF.placeholder = "Password"
        passwordTF.backgroundColor = . white
        passwordTF.layer.cornerRadius = 6
        return passwordTF
    }()
    
    private let loginButton: UIButton = {
        let loginBtn = UIButton()
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.layer.backgroundColor = UIColor.tintColor.cgColor
        loginBtn.layer.cornerRadius = 18
        return loginBtn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        initUi()
        goToThirdVC()
    }
    
    func initUi() {
        
        view.addSubview(registerLabel)
        view.addSubview(infoLabel)
        view.addSubview(image)
        view.addSubview(emailLabel)
        view.addSubview(passwordLabel)
        view.addSubview(mobileNumberLabel)
        view.addSubview(usernameLabel)
        view.addSubview(passwordTextField)
        view.addSubview(emailTextField)
        view.addSubview(mobileNumberTextField)
        view.addSubview(userNameTextField)
        view.addSubview(loginButton)
        
        image.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(0)
            make.leading.trailing.equalToSuperview().inset(0)
            make.height.equalTo(200)
        }
        
        registerLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(280)
        }
        
        infoLabel.snp.makeConstraints { make in
            make.centerX.equalTo(registerLabel)
            make.top.equalTo(registerLabel.snp.bottom).offset(4)
        }
        
        usernameLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(28)
            make.top.equalTo(infoLabel.snp.bottom).offset(28)
        }
        
        userNameTextField.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(28)
            make.top.equalTo(usernameLabel.snp.bottom).offset(8)
            make.height.equalTo(48)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(28)
            make.top.equalTo(userNameTextField.snp.bottom).offset(8)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(28)
            make.top.equalTo(emailLabel.snp.bottom).offset(8)
            make.height.equalTo(48)
        }
        
        mobileNumberLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(28)
            make.top.equalTo(emailTextField.snp.bottom).offset(8)
        }
        
        mobileNumberTextField.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(28)
            make.top.equalTo(mobileNumberLabel.snp.bottom).offset(8)
            make.height.equalTo(48)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(28)
            make.top.equalTo(mobileNumberTextField.snp.bottom).offset(8)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(28)
            make.top.equalTo(passwordLabel.snp.bottom).offset(8)
            make.height.equalTo(48)
        }
        
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(passwordTextField.snp.bottom).offset(40)
            make.height.equalTo(48)
            make.width.equalTo(280)
        }
    }

    func goToThirdVC() {
        loginButton.addTarget(self, action:#selector(tapBtn), for: .touchUpInside)
    }
    
    @objc func tapBtn(sender: UIButton) {
        if emailTextField.text != nil || userNameTextField.text != nil || passwordTextField.text != nil || mobileNumberTextField.text != nil {
            let vc = ThirdViewController()
            vc.newValue = emailTextField.text
            navigationController?.pushViewController(vc, animated: true)
            
        }
    }
}
