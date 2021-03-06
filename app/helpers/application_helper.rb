module ApplicationHelper
  def generate_profile_image(user)
    unless user.nil?
      if user.picture?
        image_tag user.picture.url(:bright_face), { class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown" }
      elsif user.facebook_picture_url?
        image_tag(user.facebook_picture_url, class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown")
      else
        image_tag("https://thesocietypages.org/socimages/files/2009/05/vimeo.jpg", class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown")
      end
    end
  end

  def generate_profile_photo(user)
    unless user.nil?
      if user.picture?
        image_tag user.picture.url(:big_face), { class: "avatar-big" }
      elsif user.facebook_picture_url?
        image_tag(user.facebook_picture_url,  class: "avatar-big")
      else
        image_tag("https://thesocietypages.org/socimages/files/2009/05/vimeo.jpg", class: "avatar-big")
      end
    end
  end

  def all_users_request(user)
    unless user.nil?
      challenges = Challenge.where(id_user_owner: current_user.id)
      @waiting_aproval = ChallengeRequest.where(user_id: current_user.id).count
      ct = 0
      unless challenges.empty?
        challenges.each do |challenge|
          ct += ChallengeRequest.where(challenge_id: challenge.id).count
        end
      end
      ct
    end
  end

end
