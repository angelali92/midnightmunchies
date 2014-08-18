module ApplicationHelper



def sortable(column, title = nil)
        title ||= column.titleize
        css_class = column == sort_column ? "current #{sort_direction}" : nil
        direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
        link_to "#{title} <i class='#{direction == "desc" ? "glyphicon glyphicon-circle-arrow-down" : "glyphicon glyphicon-circle-arrow-up"}'></i>".html_safe, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
end
end 

