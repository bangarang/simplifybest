module ApplicationHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields small button", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def link_to_add_pics(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_pics small button right", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def link_to_add_trs(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_trs small button left", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def flash_class(level)
    case level
      when :notice then "alert-box notice"
      when :success then "alert-box success"
      when :error then "alert-box error"
      when :alert then "alert-box alert"
    end
  end
end
