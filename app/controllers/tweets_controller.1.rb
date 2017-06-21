class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end

#  def create
#    Tweet.create(tweets_params)
#    redirect_to tweets_path, notice: "tweetを作成しました！"
#  end

  def create
    @tweet = Tweet.new(tweets_params)
    if @tweet.save
      # 一覧画面へ遷移して"tweetを作成しました！"とメッセージを表示します。
      redirect_to tweets_path, notice: "tweetを作成しました！"
    else
      # 入力フォームを再描画します。
      render 'new'
    end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    @tweet.update(tweets_params)
    redirect_to tweets_path, notice: "tweetを更新しました！"
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweets_path, notice: "tweetを削除しました！"
  end

  private
    def tweets_params
      params.require(:tweet).permit(:content)
    end
end
