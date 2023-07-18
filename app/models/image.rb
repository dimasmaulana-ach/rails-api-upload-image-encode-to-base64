
class Image < ApplicationRecord
    require 'carrierwave'
    mount_uploader :image

    def to_base64
        base64_image = Base64.encode64(image.file.read)
        base64_image.gsub!("\n", "")
        base64_image
    end
end
