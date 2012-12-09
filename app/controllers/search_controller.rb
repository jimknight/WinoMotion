class SearchController < Formotion::FormController
  def init
    form = Formotion::Form.new({
      title: "You're a Wino",
      sections: [{
        rows: [{
          title: "Scan a barcode",
          type: :submit
        }]
        }, {
        title: "or search",
        rows: [{
          title: "",
          type: :string,
          key: :wine
        }]
      }]
    })
    form.on_submit do
      self.search
    end
    super.initWithForm(form)
  end

  def viewDidLoad
    super
    # self.navigationItem.rightBarButtonItem = UIBarButtonItem.alloc.initWithTitle("Login", style: UIBarButtonItemStyleDone, target:self, action:'login')
  end

  def search
    [:email, :password, :remember].each { |prop|
      UserController.controller.send(prop.to_s + "=", form.render[prop])
    }
    self.navigationController.dismissModalViewControllerAnimated(true)
  end
end