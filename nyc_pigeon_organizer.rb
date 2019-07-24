def nyc_pigeon_organizer(data)
  new_pig = Hash.new

  data.each_pair do |general_attr, gval|
    gval.each_pair do |specific_attr, names|
      names.each do |name|
        new_pig[name] = {} unless new_pig[name]
        new_pig[name][general_attr] = [] unless new_pig[name][general_attr]
        new_pig[name][general_attr] << specific_attr.to_s
      end
    end
  end
  new_pig
end
