
import UIKit

// Я переделал название ViewController на First Screen, так как, по сути, у нас будет 1 экран, final class взято из видео для ДЗ, лектор говорил, что это хорошо для оптимизации. Контроллер, как говорили в том же видео, не должен быть загруженным, поэтому я добавил расширения в дополнительный файл с расширениями.
class FirstScreen: UIViewController {

    // MARK: - UIElements/Oulets
    
    private lazy var imageView: UIImageView = {
        let image = UIImage(named: "BGimage")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var logLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        label.textAlignment = .center
        label.numberOfLines = 5
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var logEntryTextfield: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "keanureeves01"
        textfield.textColor = .systemGray
        textfield.backgroundColor = .white
        textfield.textAlignment = .center
        textfield.layer.cornerRadius = 20
        textfield.setLeftIcon(UIImage(named:"icons8-person") ?? UIImage.remove)
        textfield.setRightIcon(UIImage(named:"icons8-done") ?? UIImage.remove)
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    private lazy var passwordEntryTextfield: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Password"
        textfield.textColor = .systemGray
        textfield.backgroundColor = .white
        textfield.textAlignment = .center
        textfield.layer.cornerRadius = 20
        textfield.setLeftIcon(UIImage(named:"icons8-lock") ?? UIImage.remove)
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    private lazy var loginButton: UIButton = {
        let logButton = UIButton(type: .system)
        logButton.clipsToBounds = true
        logButton.backgroundColor = .systemIndigo
        logButton.setTitle("Login", for: .normal)
        logButton.setTitleColor(.white, for: .normal)
        logButton.layer.cornerRadius = 20
        logButton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        logButton.translatesAutoresizingMaskIntoConstraints = false
        
        logButton.layer.shadowColor = UIColor.black.cgColor
        logButton.layer.shadowOpacity = 0.3
        logButton.layer.shadowOffset = .zero
        logButton.layer.shadowRadius = 10
        logButton.layer.shouldRasterize = true
        logButton.layer.rasterizationScale = UIScreen.main.scale
        logButton.translatesAutoresizingMaskIntoConstraints = false
        
        return logButton
    }()
    
    private lazy var forgotPasswordButton: UIButton = {
        let helpButton = UIButton()
        helpButton.clipsToBounds = true
        helpButton.backgroundColor = .none
        helpButton.setTitle("Forgot your password?", for: .normal)
        helpButton.setTitleColor(.white, for: .normal)
        helpButton.layer.cornerRadius = 20
        helpButton.addTarget(self, action: #selector(forgotPasswordButtonPressed), for: .touchUpInside)
        helpButton.translatesAutoresizingMaskIntoConstraints = false
        return helpButton
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        [imageView, logLabel, logEntryTextfield, passwordEntryTextfield, loginButton, forgotPasswordButton].forEach {
            view.addSubview($0)
        }
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            logLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -300)
        ])
        
        NSLayoutConstraint.activate([
            logEntryTextfield.topAnchor.constraint(equalTo: logLabel.bottomAnchor, constant: 40),
            logEntryTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logEntryTextfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            logEntryTextfield.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            logEntryTextfield.heightAnchor.constraint(equalToConstant: 45)
        ])
        
        NSLayoutConstraint.activate([
            passwordEntryTextfield.topAnchor.constraint(equalTo: logEntryTextfield.bottomAnchor, constant: 10),
            passwordEntryTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordEntryTextfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            passwordEntryTextfield.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            passwordEntryTextfield.heightAnchor.constraint(equalToConstant: 45)
        ])
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordEntryTextfield.bottomAnchor, constant: 40),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            loginButton.heightAnchor.constraint(equalToConstant: 45)
        ])
        
        NSLayoutConstraint.activate([
            forgotPasswordButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 5),
            forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            forgotPasswordButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            forgotPasswordButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
    }
    
    // MARK: - Actions
    
    @objc
    private func loginButtonPressed() {
        print("Login button pressed, waiting for password button to be pressed.")
    }
    
    @objc
    private func forgotPasswordButtonPressed() {
        print("Forgot password button pressed, waiting for new password button to be pressed.")
    }

}

