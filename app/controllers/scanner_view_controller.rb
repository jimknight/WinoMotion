class ScannerViewController < UIViewController

  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTitle('Scan Barcode', image:UIImage.imageNamed('wine-glass.png'), tag:1)
    end
    self
  end

  def viewDidLoad
    self.title = "Scan Barcode"
    @scanner_button = self.create_scanner_button
    self.view.addSubview(@scanner_button)
    # @result_label = self.create_result_label
    # self.view.addSubview(@result_label)
  end
  
  def create_result_label
    label = UILabel.alloc.initWithFrame([[10, 90], [300,200]])
    label.text = "No codes have been scanned."
    label.numberOfLines = 8
    label.backgroundColor = UIColor.clearColor
    label.textColor = UIColor.whiteColor
    label.textAlignment = UITextAlignmentCenter
    label
  end
  
  def create_scanner_button
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.frame = [[(320 - 200)/2, 120], [200,50]]
    button.setTitle("Scan Barcode", forState:UIControlStateNormal) 
    
    #
    # - (void)addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
    #
    button.addTarget(self, action: :'scanner_button_tapped:', forControlEvents:UIControlEventTouchUpInside)
    
    button
  end
  
  def scanner_button_tapped(sender)
    #
    #   ZXingWidgetController *widController = [[ZXingWidgetController alloc] initWithDelegate:self showCancel:YES OneDMode:NO];
    #

    # @ZXingController = ZXingWidgetController.alloc.initWithDelegate(self, showCancel:true, OneDMode:false)
    # readers = NSMutableSet.alloc.init
    # #readers.addObject(QRCodeReader.alloc.init)
    # readers.addObject(MultiFormatOneDReader.alloc.init)
    # @ZXingController.readers = readers
    # self.presentModalViewController(@ZXingController, animated:true)

    result = "085000012178"
    wine_controller = UIApplication.sharedApplication.delegate.wine_details_controller
    navigationController.pushViewController(wine_controller, animated:true)
    wine_controller.scan_barcode(result)

  end
  
  def zxingController(controller, didScanResult:result)
    self.dismissModalViewControllerAnimated(true)
    @result_label.text = result;

    # get the json results from the search
    # open the wine controller with json results

  end
  
  def zxingControllerDidCancel(controller) 
    self.dismissModalViewControllerAnimated(true)
  end

end