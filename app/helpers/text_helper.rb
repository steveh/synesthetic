module TextHelper

  def text_to_classes(text)
    text.each_char.collect do |char|
      if char =~ /[a-zA-Z]/
        ('<span class="letter_%s">&nbsp;</span>' % char.downcase)
      else
        ('<span class="other">%s</span>' % char)
      end
    end.join('').html_safe
  end

end