module ActiveDynamic
  class Attribute < ActiveRecord::Base
    belongs_to :customizable, polymorphic: true

    self.table_name = 'active_dynamic_attributes'
    validates :name, presence: true

    enum datatype: { string: 0, text: 1, integer: 2, decimal: 3, date: 4, date_time: 5, single: 10, radio: 11 }.freeze
  end
end
