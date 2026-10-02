class Book < ApplicationRecord
  validates :title, presence: { message: "を入力してください" }
  validates :author, presence: { message: "を入力してください" }
  validates :published_year, presence: { message: "を入力してください" },
                              numericality: { only_integer: true, message: "は数値で入力してください" }
end
