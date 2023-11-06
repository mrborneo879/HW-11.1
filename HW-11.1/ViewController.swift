
import UIKit

// Я переделал название ViewController на First Screen, так как, по сути, у нас будет 1 экран, final class взято из видео для ДЗ, лектор говорил, что это хорошо для оптимизации.
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
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        [imageView, logLabel].forEach {
            view.addSubview($0)
        }
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            logLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -300)
        ])
    }
    
    // MARK: - Actions

}

