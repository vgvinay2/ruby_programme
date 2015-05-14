class SaveArticleStatus

  def publish
    @state = :publish
  end

  def draft
    @state = :draft
  end

  def incomplete
    @state = :incomplete
  end

  def went_on_live
    @state = :went_on_live
  end

end

save_article_status = SaveArticleStatus.new
p save_article_status.draft


#########################################################
############### USING METHOD HOOK  #######################
class SaveArticleStatus
  [:publish, :draft, :incomplete, :went_on_live].each do |method|
    p method
    define_method method do
      @state = method
    end
  end
end
p SaveArticleStatus.instance_methods(false)

save_article_status = SaveArticleStatus.new
p save_article_status.draft


#############################################################
########### CREATE OWN attr_accessor USING ##################

class Class
  def  my_att_reader(*args)
    args.each do |arg|
      define_method (:"#{arg}") do
        instance_variable_get("@#{arg}")
      end

      define_method ("#{arg}=") do |value|
        instance_variable_set("@#{arg}", value)
      end
    end
  end
end


class WPl
  my_att_reader :name, :address
end
wpl = WPl.new
p wpl.name
wpl.name = 'Brijesh'
p wpl.name
