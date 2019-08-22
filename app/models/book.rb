class Book < ApplicationRecord
    def self.search(search, id)
        if search
            where(["title LIKE ? OR author LIKE ? OR genre LIKE ? OR classification LIKE ? OR book_type LIKE ? OR cast(year as text) LIKE ? ", 
                "%#{search}%", 
                "%#{search}%", 
                "%#{search}%", 
                "%#{search}%", 
                "%#{search}%", 
                "%#{search}%"])
        end
    end
end
