# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def select_categories
    Category.all.map do |cate|
      [cate.name, cate.id]
    end
  end
end
