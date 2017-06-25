module PicturesHelper
  def getdata_method
    if action_name == 'new'
      confirm_tweets_path
    else action_name == 'edit'
      tweet_path
    end
  end
end
