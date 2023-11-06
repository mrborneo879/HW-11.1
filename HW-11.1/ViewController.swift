
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
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        [imageView, logLabel, logEntryTextfield, passwordEntryTextfield].forEach {
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
            logEntryTextfield.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            passwordEntryTextfield.topAnchor.constraint(equalTo: logEntryTextfield.bottomAnchor, constant: 10),
            passwordEntryTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordEntryTextfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            passwordEntryTextfield.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            passwordEntryTextfield.heightAnchor.constraint(equalToConstant: 40)
        ])
        
    }
    
    // MARK: - Actions

}

