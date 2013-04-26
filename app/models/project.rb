class Project < ActiveRecord::Base

  %w[name author organization_id].each do |key|
    scope "has_#{key}", lambda { |value| where("details @> hstore(?, ?)", key, value) }

    define_method(key) do
      details && details[key]
    end

    define_method("#{key}=") do |value|
      self.details = (details || {}).merge(key => value)
    end
  end
end
