class SignUpController < UIViewController
  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTitle('Sign Up', image:UIImage.imageNamed('list.png'), tag:1)
    end
    self
  end
end