import UIKit

public final class RoadSignView: UIImageView {
  public init(distanceText: String) {
    super.init(frame: CGRect(origin: .zero, size: CGSize(width: 500, height: 500)))
    image = UIImage(named: "road_sign.png")!

    let label = UILabel(frame: bounds)
    label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
    label.textAlignment = .center
    label.numberOfLines = 0
    label.text = "NEXT DOCTOR IN\n\(distanceText)"

    addSubview(label)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

