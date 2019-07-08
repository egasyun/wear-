class Link < ApplicationRecord
  belongs_to :clothe, optional: true
  belongs_to :cordinate, optional: true
end
