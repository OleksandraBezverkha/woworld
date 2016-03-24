module EmojiHelper
  def emojify(content)
    h(content).to_str.gsub(/:([\w+-]+):/) do |match|
      # emoji = $1
      # if emoji
      #   %(<div  class='gemoji#{emoji.image_filename.split('/').last.split('.').first}' ></div>)

      if emoji = $1
        %(<div  class='#{emoji}' ></div>)

      else
        match
      end
    end.html_safe if content.present?
  end
end
