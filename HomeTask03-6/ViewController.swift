import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let image: UIImageView = {
        let mainImage = UIImageView()
        mainImage.image = UIImage(named: "image")
        return mainImage
    }()
    
    private let welcomLabel: UILabel  = {
        let welcomeLbl = UILabel()
        welcomeLbl.text = "Welcome"
        welcomeLbl.textColor = .white
        welcomeLbl.font = .boldSystemFont(ofSize: 28)
        return welcomeLbl
    }()
    
    private let loginLabel: UILabel = {
        let loginLbl = UILabel()
        loginLbl.text = "Login to your account"
        loginLbl.textColor = .white
        loginLbl.font = .systemFont(ofSize: 20)
        return loginLbl
    }()
    
    private let emailLabel: UILabel = {
        let emailLbl = UILabel()
        emailLbl.text = "Email"
        emailLbl.font = .systemFont(ofSize: 18)
        emailLbl.textColor = .white
        return emailLbl
    }()
    
    private var emailTextField: UITextField = {
      var emailTF = UITextField()
        emailTF.placeholder = "Email"
        emailTF.layer.cornerRadius = 6
        emailTF.backgroundColor = .white
        emailTF.layer.borderWidth = 1
        return emailTF
    }()
    
    private let passwordLabel: UILabel = {
        let passwordLbl = UILabel()
        passwordLbl.text = "Password"
        passwordLbl.font = .systemFont(ofSize: 18)
        passwordLbl.textColor = .white
        return passwordLbl
    }()
    
    private let passwordTextField: UITextField = {
        let passwordTF = UITextField()
        passwordTF.placeholder = "Password"
        passwordTF.backgroundColor = . white
        passwordTF.layer.cornerRadius = 6
        passwordTF.layer.borderWidth = 1
        passwordTF.isSecureTextEntry = false
        return passwordTF
    }()
    
    private let eyeButton: UIButton = {
        let eyeBtn = UIButton()
        eyeBtn.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        return eyeBtn
    }()
    
    private let forgotPasswordButton: UIButton = {
        let forgotPasswordBtn = UIButton()
        forgotPasswordBtn.setTitle("Forgot Password?", for: .normal)
        forgotPasswordBtn.tintColor = UIColor(named: "redColor")
        return forgotPasswordBtn
    }()
    
    private let loginButton: UIButton = {
        let loginBtn = UIButton()
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.layer.backgroundColor = UIColor.tintColor.cgColor
        loginBtn.layer.cornerRadius = 18
        return loginBtn
    }()
    
    private let createNowButton: UIButton = {
        let createNowBtn = UIButton()
        createNowBtn.setTitle("Create Now", for: .normal)
        createNowBtn.tintColor = .white
        return createNowBtn
    }()
    
    private let accountLabel: UILabel = {
        let accountLbl = UILabel()
        accountLbl.text = "Don't have account?"
        accountLbl.textColor = .gray
        accountLbl.font = .systemFont(ofSize: 16)
        return accountLbl
    }()
    
    private let googleImageView: UIImageView = {
        let google = UIImageView()
        google.image = UIImage(named: "google")
        return google
    }()
    
    private let facebookImageView: UIImageView = {
        let facebook = UIImageView()
        facebook.image = UIImage(named: "facebook")
        return facebook
    }()
    
    private let instagramImageView: UIImageView = {
        let instagram = UIImageView()
        instagram.image = UIImage(named: "instagram")
        return instagram
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        initAction()
    }
    
    func initUI() {
        
        view.addSubview(welcomLabel)
        view.addSubview(loginLabel)
        view.addSubview(image)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(forgotPasswordButton)
        view.addSubview(loginButton)
        view.addSubview(createNowButton)
        view.addSubview(accountLabel)
        view.addSubview(googleImageView)
        view.addSubview(facebookImageView)
        view.addSubview(instagramImageView)
        view.addSubview(eyeButton)
        
        
        image.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(0)
            make.leading.trailing.equalToSuperview().inset(0)
            make.height.equalTo(200)
        }
        
        welcomLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(280)
        }
        
        loginLabel.snp.makeConstraints { make in
            make.centerX.equalTo(welcomLabel)
            make.top.equalTo(welcomLabel.snp.bottom).offset(4)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(32)
            make.top.equalTo(loginLabel.snp.bottom).offset(28)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(28)
            make.top.equalTo(emailLabel.snp.bottom).offset(8)
            make.height.equalTo(48)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(28)
            make.top.equalTo(emailTextField.snp.bottom).offset(8)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(28)
            make.top.equalTo(passwordLabel.snp.bottom).offset(8)
            make.height.equalTo(48)
        }
        
        eyeButton.snp.makeConstraints { make in
            make.trailing.equalTo(passwordTextField.snp.trailing).offset(-4)
            make.centerY.equalTo(passwordTextField)
            make.width.equalTo(28)
            make.height.equalTo(24)
        }
       
        forgotPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(4)
            make.trailing.equalTo(passwordTextField.snp.trailing)
        }
        
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-200)
            make.height.equalTo(48)
            make.width.equalTo(280)
        }
        
        createNowButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(4)
            make.trailing.equalTo(loginButton.snp.trailing)
        }
        
        accountLabel.snp.makeConstraints { make in
            make.centerY.equalTo(createNowButton)
            make.trailing.equalTo(createNowButton.snp.leading).offset(-4)
        }
        
        facebookImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-80)
        }
        
        instagramImageView.snp.makeConstraints { make in
            make.leading.equalTo(facebookImageView).offset(60)
            make.bottom.equalToSuperview().offset(-80)
        }
        
        googleImageView.snp.makeConstraints { make in
            make.trailing.equalTo(facebookImageView).offset(-60)
            make.bottom.equalToSuperview().offset(-80)
        }
    }
    
    private func initAction() {
        createNowButton.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(tapLoginBtn), for: .touchUpInside)
        eyeButton.addTarget(self, action: #selector(tapEyeButton), for: .touchUpInside)
        
    }
        
        @objc func tapAction(sender: UIButton!) {
            let vc = SecondViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
        
        @objc func tapLoginBtn(sender: UIButton) {
            if emailTextField.text == "" || passwordTextField.text == "" {
                emailTextField.layer.borderColor = UIColor.red.cgColor
                passwordTextField.layer.borderColor = UIColor.red.cgColor
            } else {
                print ("Login")
            }
        }
    
    @objc func tapEyeButton(sender: UIButton) {
                    passwordTextField.isSecureTextEntry = true
                }
}

