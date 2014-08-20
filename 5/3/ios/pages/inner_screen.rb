module Pages
  module InnerScreen
    class << self

      def has_text(text)
        wait { text_exact text }
      end

    end
  end
end

module Kernel
  def inner_screen
    Pages::InnerScreen
  end
end
