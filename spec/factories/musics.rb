FactoryBot.define do
  factory :music do
    musics_name          {"タイトル"}
    description         {"商品説明"}
    price               {11111}
    category_id         {2}
    status_id           {2}
    area_id             {2}
    shipping_cost_id    {2}
    shipping_time_id    {2}
    association :user

  end
end
