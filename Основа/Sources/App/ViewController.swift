import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets (UI - элементы интерфейса - основная настройка)
    
    @IBOutlet weak var LabelLogin: UILabel!
    @IBOutlet weak var textFieldLogin: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var ButtonLoginActive: UIButton!
    @IBOutlet weak var LabelForgotYourPassword: UILabel!
    @IBOutlet weak var LabelOrConnectWith: UILabel!
    @IBOutlet weak var FacebookField: UITextField!
    @IBOutlet weak var TwitterField: UITextField!
    @IBOutlet weak var LabelDontHaveAccount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    // MARK: backgroundImage
        
        let backgroundImage = UIImage(named: "background")
        let backgroundImageView = UIImageView(image: backgroundImage)
            backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
    // MARK: LabelLogin
        
        LabelLogin.text = "Login"
        LabelLogin.textColor = .white
        LabelLogin.font = .systemFont(ofSize: 27, weight: .bold)
        LabelLogin.textAlignment = .center
        LabelLogin.numberOfLines = 5
        
    // MARK: textFieldLogin
        
        textFieldLogin.backgroundColor = .white
        textFieldLogin.clipsToBounds = true
        textFieldLogin.layer.cornerRadius = 20
        textFieldLogin.text = "denemesis163"
        textFieldLogin.textColor = .gray
        textFieldLogin.font = .systemFont(ofSize: 10)
        
        let loginImage = UIImage(named: "login")
        setLeftIcon(txtField: textFieldLogin, andImage: loginImage!)
        
        let rightloginImage = UIImage(named: "rightImageLogin")
        setRightIcon(txtField: textFieldLogin, andImage: rightloginImage!)
        
        let passwordImage = UIImage(named: "password")
        setLeftIcon(txtField: textFieldPassword, andImage: passwordImage!)
        
        
    // MARK: textFieldPassword
        
        textFieldPassword.backgroundColor = .white
        textFieldPassword.clipsToBounds = true
        textFieldPassword.layer.cornerRadius = 20
        textFieldPassword.text = "password"
        textFieldPassword.textColor = .gray
        textFieldPassword.font = .systemFont(ofSize: 10)
        
        
    // MARK: ButtonLoginActive
        
        ButtonLoginActive.clipsToBounds = true
        ButtonLoginActive.layer.cornerRadius = 20
        ButtonLoginActive.layer.shadowColor = UIColor.black.cgColor
        ButtonLoginActive.layer.shadowOpacity = 0.1
        ButtonLoginActive.layer.shadowOffset = .zero
        ButtonLoginActive.layer.shadowRadius = 20
        ButtonLoginActive.layer.shouldRasterize = true
        ButtonLoginActive.layer.rasterizationScale = UIScreen.main.scale

    // MARK: LabelForgotYourPassword
        
        LabelForgotYourPassword.text = "Forgot your password?"
        LabelForgotYourPassword.textColor = .white
        LabelForgotYourPassword.font = .systemFont(ofSize: 12)
        LabelForgotYourPassword.textAlignment = .center
        LabelForgotYourPassword.numberOfLines = 5
        
    // MARK: LabelOrConnectWith
        
        LabelOrConnectWith.text = "or connect with"
        LabelOrConnectWith.textColor = .white
        LabelOrConnectWith.font = .systemFont(ofSize: 12)
        LabelOrConnectWith.textAlignment = .center
        LabelOrConnectWith.numberOfLines = 5
        
    // MARK: FacebookField
        
        FacebookField.clipsToBounds = true
        FacebookField.layer.cornerRadius = 20
        
        let facebookImage = UIImage(named: "facebook")
        setLeftIcon(txtField: FacebookField, andImage: facebookImage!)
        
    // MARK: TwitterField
        
        TwitterField.clipsToBounds = true
        TwitterField.layer.cornerRadius = 20
        
        let twitterImage = UIImage(named: "twitter")
        setLeftIcon(txtField: TwitterField, andImage: twitterImage!)
        
    // MARK: LabelDontHaveAccount
        
        LabelDontHaveAccount.text = "Dont have account?   Sign up"
        LabelDontHaveAccount.textColor = .white
        LabelDontHaveAccount.font = .systemFont(ofSize: 12)
        LabelDontHaveAccount.textAlignment = .center
        LabelDontHaveAccount.numberOfLines = 5
        
    }
    
    // MARK: - Lifecycle (методы жизненного цикла ViewControllera)
    
    func setLeftIcon(txtField: UITextField, andImage img: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = img
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        txtField.leftView = iconContainerView
        txtField.leftViewMode = .always
    }
    
    func setRightIcon(txtField: UITextField, andImage img: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 0, y: 5, width: 20, height: 20))
        iconView.image = img
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        txtField.rightView = iconContainerView
        txtField.rightViewMode = .always
    }
    
    // MARK: - Setup (методы для настройки иерархии View и настройки констрейнтов)
    
    // MARK: - Actions (методы для работы с взаимодействием пользователя с интерфейсом)
    
}

