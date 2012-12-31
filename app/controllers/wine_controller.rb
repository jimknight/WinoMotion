class WineController < UIViewController

  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor
  end

  def scan_barcode(barcode)
    # do a straight get request here and see what the output is
    BW::HTTP.get("http://youreawino.com/api/v1/searches/new?bc=#{barcode}", {format: :json}) do |response|
      json_response = BW::JSON.parse(response.body.to_str)
      title = json_response["wine"]["title"]
      avg_price = json_response["wine"]["avg_price"]
      description = json_response["wine"]["description"]
      image_url = json_response["wine"]["image_url"]
          @label = UILabel.alloc.initWithFrame(CGRectZero)
    @label.text = title
    @label.sizeToFit
    @label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
    self.view.addSubview @label
    #           @label = UILabel.alloc.initWithFrame(CGRectZero)
    # @label.text = description
    # @label.sizeToFit
    # @label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
    # self.view.addSubview @label
url = NSURL.URLWithString("http://www.gravatar.com/avatar/1d92e61d7066383b1e3c797ea635f86e?s=128&d=identicon&r=PG")
url = NSURL.URLWithString(image_url)
    data = NSData.dataWithContentsOfURL(url)
    remote = UIImage.imageWithData(data)
    image = UIImageView.alloc.initWithFrame([[50, 50],[150, 50]])
    image.contentMode = UIViewContentModeScaleAspectFit
    image.image = remote

    # view_a = UIImageView.alloc.initWithFrame [[100, 100], [100, 100]]
    # # image = 'wine-glass.png'.uiimage
    # image = 'http://lavatech.com/Site/Files/kb_150x150.jpg/$file/kb_150x150.jpg'.uiimage
    # image.scale_to [30, 30]
    # image.rounded  # default: 5 pt radius
    # view_a.image = image
    self.view.addSubview(image)
    # img = UIImage.imageNamed('wine-glass.png')
    # @image = UIImageView.alloc.initWithFrame(CGRectMake(0, 0, img.size.width, img.size.height))
    # self.view.addSubview @image
      #open_screen WineScreen.new(nav_bar: true, wine_title: title, wine_description: description)
    end
  end

end