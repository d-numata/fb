class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :update, :destroy]

  def index
    @tweets = Tweet.all
  end
  
  def new
#    @tweet = Tweet.new
    if params[:back]
      @tweet = Tweet.new(tweets_params)
    else
      @tweet = Tweet.new
    end
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
  
  def confirm
    @tweet = Tweet.new(tweets_params)
    render :new if @tweet.invalid?
  end

  private
    def tweets_params
      params.require(:tweet).permit(:content)
    end
    
    # idをキーとして値を取得するメソッド
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end
end