class Movie < ActiveRecord::Base
   
	validates :tittle, presence: true,
                   length: { minimum: 2 }
      validates :year, presence: true
      validates :rating, presence: true, length:{ in: 1..10 }
      validates :language, presence: true
      validates :actors, presence: true
      validates :producer, presence: true
      validates :director, presence: true          

end
