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
          @label = UILabel.alloc.initWithFrame(CGRectZero)
    @label.text = title
    @label.sizeToFit
    @label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
    self.view.addSubview @label
              @label = UILabel.alloc.initWithFrame(CGRectZero)
    @label.text = description
    @label.sizeToFit
    @label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
    self.view.addSubview @label
      #open_screen WineScreen.new(nav_bar: true, wine_title: title, wine_description: description)
    end
  end

end