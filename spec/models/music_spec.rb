require 'rails_helper'

RSpec.describe Music, type: :model do
  before do
    @music = FactoryBot.build(:music)
  end

  describe '楽曲の投稿' do

    context '投稿できる時' do
      it '全ての情報を正しく入力できていれば投稿できる' do
        expect(@music).to be_valid
      end
    end

    context '投稿できない時' do
      it '音源ファイルがなければ投稿できない' do
        @music.sound = nil
        @music.valid?
        expect(@music.errors.full_messages).to include("音源ファイル(MP3)を入力してください")
      end

      it '曲名が空では投稿できない' do
        @music.musics_name = ""
        @music.valid?
        expect(@music.errors.full_messages).to include("曲名を入力してください")
      end

      it '曲の説明が空では投稿できない' do
        @music.description = ""
        @music.valid?
        expect(@music.errors.full_messages).to include("曲の説明を入力してください")
      end

      it 'ジャンルが空では投稿できない' do
        @music.genre_id = ""
        @music.valid?
        expect(@music.errors.full_messages).to include("ジャンルを入力してください")
      end

      it 'ジャンルが1では投稿できない' do
        @music.genre_id = 1
        @music.valid?
        expect(@music.errors.full_messages).to include("ジャンルを選択してください")
      end

      it '雰囲気が空では投稿できない' do
        @music.image_id = ""
        @music.valid?
        expect(@music.errors.full_messages).to include("イメージを入力してください")
      end

      it '雰囲気が1では投稿できない' do
        @music.image_id = 1
        @music.valid?
        expect(@music.errors.full_messages).to include("イメージを選択してください")
      end



    end


  end


end
