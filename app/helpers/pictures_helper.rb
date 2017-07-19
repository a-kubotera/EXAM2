module PicturesHelper
  def users_avatar(user)
    @avatar = user.avatar
    if @avatar.blank?
      @avatar = "no_image.png"
    end
      return image_tag(@avatar, alt: user.name,class:"users_avater")
  end

  def users_name(user)
    @name = user.name
    if @name.blank?
      @name = "名無しさん"
    end
      return @name
  end

  def your_picture(picture)
    @picture = picture.image.url
    @name = picture.name
    if @picture.blank?
      @picture = erased.png
      @name = "Herokuに消されてるよ！"
    end
      return image_tag(@picture, alt: @name)
  end
end
