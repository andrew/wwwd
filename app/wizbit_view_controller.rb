class WizbitViewController < UIViewController
  attr_reader :label
  
  def loadView
    self.view = UIImageView.alloc.init
  end
  
  def viewDidLoad
     view.image = UIImage.imageNamed('wizbit.png')
     @label = makeLabel
     view.addSubview(@label)  
     view.userInteractionEnabled = true    
     tap = UITapGestureRecognizer.alloc.initWithTarget(self, action:'showAnswer')
     view.addGestureRecognizer(tap)
     @wizbit = Wizbit.new
   end

   def showAnswer
     @label.text = @wizbit.speak
   end

   def makeLabel
     label = UILabel.alloc.initWithFrame([[0,380], [320,80]])
     label.backgroundColor = UIColor.blackColor
     label.text = "WWWD?"
     label.font = UIFont.boldSystemFontOfSize(34)
     label.textColor = UIColor.whiteColor
     label.textAlignment = UITextAlignmentCenter
     label
   end
end