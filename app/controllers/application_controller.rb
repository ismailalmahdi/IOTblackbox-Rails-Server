class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?


# adding custom will paginate renderer for the new bootstrap
  def bootstrap_paginate_renderer
    # Return nice pagination for materialize
    Class.new(WillPaginate::ActionView::LinkRenderer) do
    def container_attributes
      {class: "pagination"}
    end

    def page_number(page)
      if page == current_page
        "<li class=\"page-item active\">"+link(page, page, rel: rel_value(page), class:"page-link")+"</li>"
      else
        "<li class=\"page-item\">"+link(page, page, rel: rel_value(page), class:"page-link")+"</li>"
      end
    end

    def gap
      text = @template.will_paginate_translate(:page_gap) { '&hellip;' }
      %(<li class="page-item disabled"><span class="page-link mr2">#{text}</span></li>)
    end
    def previous_page
      num = @collection.current_page > 1 && @collection.current_page - 1
      previous_or_next_page(num, "Newer")
    end

    def next_page
      num = @collection.current_page < total_pages && @collection.current_page + 1
      previous_or_next_page(num, "Older")
    end

    def previous_or_next_page(page, text)
      if page
        "<li class=\"page-item\">"+link(text, page, class: "page-link")+"</li>"
      else
        ""
      end
    end
    end
  end

  protected

    def configure_permitted_parameters
      added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end

end
