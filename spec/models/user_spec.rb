require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end


  describe 'ユーザー新規登録機能' do

    context 'ユーザー登録できる時' do

      it '全ての情報が正しく入力できていれば、登録できる' do
        expect(@user).to be_valid
      end

      it 'passwordとpassword(確認用)が一致すれば、登録できる' do
        @user.password = '111aaa'
        @user.password_confirmation = '111aaa'
        expect(@user).to be_valid
      end

      it '苗字は全角(漢字、ひらがな、カタカナ)であれば登録できる' do
        @user.first_name = '漢かカ'
        expect(@user).to be_valid
      end

      it '名前は全角(漢字、ひらがな、カタカナ)であれば登録できる' do
        @user.last_name = '字じジ'
        expect(@user).to be_valid
      end

      it '苗字(カナ)は全角(カタカナ)であれば登録できる' do
        @user.first_name_kana = 'アアア'
        expect(@user).to be_valid
      end

      it '名前(カナ)は全角(カタカナ)であれば登録できる' do
        @user.last_name_kana = 'イイイ'
        expect(@user).to be_valid
      end

    end





    context 'ユーザー登録できない時' do

      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームを入力してください")
      end

      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end

      it 'emailは一意性でなければ登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Eメールはすでに存在します")
      end

      it 'emailに@が含まれなければ登録できない' do
        @user.email = 'aaaaaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールは不正な値です")
      end

      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end

      it 'passwordが5文字以下では登録できない' do
        @user.password = 'ma06'
        @user.password_confirmation = 'ma06'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
      end
      
      it 'passwordは全角では登録できない' do
        @user.password = 'なななななな'
        @user.password_confirmation = 'なななななな'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは不正な値です")
      end

      it 'passwordは英語のみでは登録できない' do
        @user.password = 'aaaaaa'
        @user.password_confirmation = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは不正な値です")
      end

      it 'passwordは数字のみでは登録できない' do
        @user.password = '111111'
        @user.password_confirmation = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは不正な値です")
      end

      it 'passwordが二つとも一致しなければ登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end

      it '苗字が空では登録できない' do
        @user.first_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("苗字を入力してください")
      end

      it '苗字が半角では登録できない' do
        @user.first_name = 'ddhdhshshs'
        @user.valid?
        expect(@user.errors.full_messages).to include("苗字は全角で入力してください")
      end

      it '苗字(カナ)が空では登録できない' do
        @user.first_name_kana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("苗字(カナ)を入力してください")
      end

      it '苗字(カナ)が半角では登録できない' do
        @user.first_name_kana = 'aaaaaaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include("苗字(カナ)は全角で入力してください")
      end

      it '名前(カナ)が空では登録できない' do
        @user.last_name_kana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("名前(カナ)を入力してください")
      end

      it '名前(カナ)が半角では登録できない' do
        @user.last_name_kana = 'aaaaaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include("名前(カナ)は全角で入力してください")
      end

      it '生年月日が空では登録できない' do
        @user.birthday = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("生年月日を入力してください")
      end


    end


  end

end
