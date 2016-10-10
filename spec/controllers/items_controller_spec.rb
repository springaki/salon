require 'rails_helper'

describe ItemsController do

  context "ログイン状態" do

    let(:login_user) { create(:user) }
    before :each do
      sign_in_user login_user
    end

    describe "GET index" do
      example "全ての連絡先が表示すること" do
        item1 = create(:item)
        item2 = create(:item)
        get :index, params: {}
        expect(assigns(:items)).to match_array([item1, item2])
      end

      example ":index テンプレートを表示すること" do
        get :index
        expect(response).to render_template :index
      end
    end

    describe "GET show" do
      example "@itemに要求されたアイテムを割り当てること" do
        item = create(:item)
        get :show, params: { id: item }
        expect(assigns(:item)).to eq item
      end
    end

    describe "POST create" do
      example "データベースに新しいItemを保存すること" do
        expect{
          post :create, params: { item: attributes_for(:item) }
        }.to change(Item, :count).by(1)
      end

      # example "無効な属性の場合、保存されないこと" do
    #   expect{
    #
    #   }.not_to change(Item, :count)
    # end
    end

  end

  context "非ログイン状態" do
    describe "GET index" do
      example "ログインを要求すること" do
        get :index, params: {}
        expect(response).to redirect_to new_user_session_url
      end
    end
  end
end