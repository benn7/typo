module ActionView
  class Base
    alias_method :__render_file, :render_file
    
    def render_file(template_path, use_full_path = true, local_assigns = {})
      if use_full_path
        begin
          theme_path = "../../themes/#{config[:theme]}/views/#{template_path}"
          template_extension = pick_template_extension(theme_path)
          __render_file(theme_path, use_full_path, local_assigns)
        rescue => err
          __render_file(template_path, use_full_path, local_assigns)
        end
      else
        __render_file(template_path, use_full_path, local_assigns)
      end
    end
  end
end