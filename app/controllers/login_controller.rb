class LoginController < Formotion::FormController
  def init
    form = Formotion::Form.new({
      title: "You're a Wino",
      sections: [{
        rows: [{
          title: "Email",
          type: :string,
          placeholder: "email",
          key: :email
        }, {
          title: "Password",
          type: :string,
          placeholder: "password",
          key: :password,
          secure: true
        }, {
          title: "Remember?",
          type: :switch,
          key: :remember,
          value: true
        }]
      }, {
        rows: [{
          title: "Login",
          type: :submit,
        }]
      }]
    })
    form.on_submit do
      self.login
    end
    super.initWithForm(form)
  end

  def viewDidLoad
    super
    self.navigationItem.rightBarButtonItem = UIBarButtonItem.alloc.initWithTitle("Login", style: UIBarButtonItemStyleDone, target:self, action:'login')
  end

  def login
    @searchViewController = SearchController.alloc.init
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(@searchViewController)
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible

    # [:email, :password, :remember].each { |prop|
    #   UserController.controller.send(prop.to_s + "=", form.render[prop])
    # }
    # self.navigationController.dismissModalViewControllerAnimated(true)
  end
end