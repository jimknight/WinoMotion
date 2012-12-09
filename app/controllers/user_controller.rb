class UserController < UIViewController
  def self.controller
    @controller ||= UserController.alloc.initWithNibName(nil, bundle: nil)
  end

  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.whiteColor

    @email_label = UILabel.alloc.initWithFrame(CGRectZero)
    self.view.addSubview(@email_label)

    @password_label = UILabel.alloc.initWithFrame(CGRectZero)
    self.view.addSubview(@password_label)

    @remember_label = UILabel.alloc.initWithFrame(CGRectZero)
    self.view.addSubview(@remember_label)
  end

  def email=(email)
    @email_label.text = "Email: #{email}"
    @email_label.sizeToFit
    @email_label.center = [self.view.frame.size.width/2, self.view.frame.size.height/2 - 40]
  end

  def password=(password)
    @password_label.text = "Password: #{password}"
    @password_label.sizeToFit
    @password_label.center = [@email_label.center.x, @email_label.center.y + @password_label.bounds.size.height]
  end

  def remember=(remember)
    @remember_label.text = "Remember? #{remember}"
    @remember_label.sizeToFit
    @remember_label.center = [@password_label.center.x, @password_label.center.y + @remember_label.bounds.size.height]
  end
end