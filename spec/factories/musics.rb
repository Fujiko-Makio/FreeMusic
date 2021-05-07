FactoryBot.define do
  factory :music do
    musics_name         {"タイトル"}
    description         {"曲の説明"}
    genre_id            {2}
    image_id            {2}
    association :user

    after(:build) do |music|
      music.sound.attach(io: File.open('public/sound/リパブリック賛歌_-_8bit.mp3'), filename: 'リパブリック賛歌_-_8bit.mp3')
    end
  end
end
