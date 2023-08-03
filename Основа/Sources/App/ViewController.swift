import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets (UI - элементы интерфейса - основная настройка)

    @IBOutlet weak var labelLogin: UILabel!
    @IBOutlet weak var labelOrConnectWith: UILabel!
    @IBOutlet weak var labelDontHaveAccount: UILabel!
    
    @IBOutlet weak var textFieldLogin: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var buttonForgotYourPassword: UIButton!
    @IBOutlet weak var buttonLoginActive: UIButton!
    @IBOutlet weak var buttonFacebook: UIButton!
    @IBOutlet weak var buttonSignUp: UIButton!
    @IBOutlet weak var buttonTwitter: UIButton!
    
    // MARK: - ViewDidLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    // MARK: backgroundImage
        
        let backgroundImage = UIImage(named: "background")
        let backgroundImageView = UIImageView(image: backgroundImage)
        
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
    // MARK: LabelLogin
        
        labelLogin.text = "Login"
        labelLogin.textColor = .white
        labelLogin.font = .systemFont(ofSize: 35, weight: .bold)
        labelLogin.textAlignment = .center
        labelLogin.numberOfLines = 5
        
    // MARK: LabelOrConnectWith
            
        labelOrConnectWith.text = "or connect with"
        labelOrConnectWith.textColor = .white
        labelOrConnectWith.font = .systemFont(ofSize: 15)
        labelOrConnectWith.textAlignment = .center
        labelOrConnectWith.numberOfLines = 5
        
    // MARK: LabelDontHaveAccount
            
        labelDontHaveAccount.textColor = .white
        labelDontHaveAccount.font = .systemFont(ofSize: 15)
        labelDontHaveAccount.textAlignment = .center
        labelDontHaveAccount.numberOfLines = 5
        
    // MARK: textFieldLogin
        
        textFieldLogin.backgroundColor = .white
        textFieldLogin.clipsToBounds = true
        textFieldLogin.layer.cornerRadius = textFieldLogin.frame.size.height / 2
        textFieldLogin.text = "denemesis163"
        textFieldLogin.textColor = .gray
        textFieldLogin.font = .systemFont(ofSize: 13)
        
        let loginImage = UIImage(named: "login")
        setLeftIcon(txtField: textFieldLogin, andImage: loginImage!)
        
        let rightloginImage = UIImage(named: "rightImageLogin")
        setRightIcon(txtField: textFieldLogin, andImage: rightloginImage!)
        
        let passwordImage = UIImage(named: "password")
        setLeftIcon(txtField: textFieldPassword, andImage: passwordImage!)
        
    // MARK: textFieldPassword
        
        textFieldPassword.backgroundColor = .white
        textFieldPassword.clipsToBounds = true
        textFieldPassword.layer.cornerRadius = textFieldPassword.frame.size.height / 2
        textFieldPassword.text = "Password"
        textFieldPassword.textColor = .gray
        textFieldPassword.font = .systemFont(ofSize: 13)
        
    // MARK: ButtonLoginActive
        
        buttonLoginActive.clipsToBounds = true
        buttonLoginActive.layer.cornerRadius = buttonLoginActive.frame.size.height / 2
        buttonLoginActive.layer.shadowColor = UIColor.black.cgColor
        buttonLoginActive.layer.shadowOpacity = 0.1
        buttonLoginActive.layer.shadowOffset = .zero
        buttonLoginActive.layer.shadowRadius = 20
        buttonLoginActive.layer.shouldRasterize = true
        buttonLoginActive.layer.rasterizationScale = UIScreen.main.scale
        
    // MARK: ButtonFacebook
        
        buttonFacebook.clipsToBounds = true
        buttonFacebook.layer.cornerRadius = buttonFacebook.frame.size.height / 2
        buttonFacebook.layer.shadowColor = UIColor.black.cgColor
        buttonFacebook.layer.shadowOpacity = 0.1
        buttonFacebook.layer.shadowOffset = .zero
        buttonFacebook.layer.shadowRadius = 20
        buttonFacebook.layer.shouldRasterize = true
        buttonFacebook.layer.rasterizationScale = UIScreen.main.scale
        
    // MARK: ButtonTwitter
        
        buttonTwitter.clipsToBounds = true
        buttonTwitter.layer.cornerRadius = buttonTwitter.frame.size.height / 2
        buttonTwitter.layer.shadowColor = UIColor.black.cgColor
        buttonTwitter.layer.shadowOpacity = 0.1
        buttonTwitter.layer.shadowOffset = .zero
        buttonTwitter.layer.shadowRadius = 20
        buttonTwitter.layer.shouldRasterize = true
        buttonTwitter.layer.rasterizationScale = UIScreen.main.scale
        
    }
    
    // MARK: - Setup (методы для настройки иерархии View и настройки констрейнтов)
    
    func setLeftIcon(txtField: UITextField, andImage img: UIImage) {
        
        let iconView = UIImageView(frame: CGRect(x: 30, y: 5, width: 20, height: 20))
        iconView.image = img
        
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 70, height: 30))
        
        iconContainerView.addSubview(iconView)
        txtField.leftView = iconContainerView
        txtField.leftViewMode = .always
    }
    
    func setRightIcon(txtField: UITextField, andImage img: UIImage) {
       
        let iconView = UIImageView(frame: CGRect(x: -10, y: 5, width: 20, height: 20))
        iconView.image = img
        
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        
        iconContainerView.addSubview(iconView)
        txtField.rightView = iconContainerView
        txtField.rightViewMode = .always
    }
}

