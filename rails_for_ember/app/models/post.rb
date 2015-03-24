# Post inherits from ActiveRecord::Base
class Post < ActiveRecord::Base
  # Ruby way of saying these attributes, or database columns, are public
  attr_accessible :content, :title

  # Example of a non database-backed attribute
  # though this is a nice example, this is the kind of
  # thing that you should do in Ember.  It will INEVITABLY
  # be the case at some point that you need extra logic in
  # your MVC, but you can handle those situations when/if they
  # arrise
  def nickname
    return this.name + 'y'
  end

  # Example of a custom model method
  def self.get_newest
    Post.first
  end

end
