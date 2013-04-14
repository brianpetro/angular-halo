class Entry < ActiveRecord::Base
  %w[title summary].each do |key|
    scope "has_#{key}", lambda { |value| where("data @> hstore(?, ?)", key, value) }

    define_method(key) do
      data && data[key]
    end

    define_method("#{key}=") do |value|
      self.data = (data || {}).merge(key => value)
    end
  end
end
