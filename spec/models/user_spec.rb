require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end


  describe 'ユーザー新規登録機能' do

    context 'ユーザー登録できる時' do
    end



    context 'ユーザー登録できない時' do

      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("")
      end

    end


  end

end
