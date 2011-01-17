class TextsController < ApplicationController
  
  def index
    original = <<-EOF
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 
EOF

    @letter_map = current_user.letter_map

    @text = original.each_char.collect do |char|
      if char =~ /[a-zA-Z]/
        ('<span class="letter_%s">&nbsp;</span>' % char.downcase)
      else
        ('<span class="other">%s</span>' % char)
      end
    end.join('').html_safe
  end
  
end