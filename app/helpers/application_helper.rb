module ApplicationHelper

  def show_flash
    @show_flash = [:notice, :warning, :error].collect {|type| content_tag('div', flash[type], :id => type, :class => "alert #{type}") if flash[type] }.to_s.html_safe
  end
end
