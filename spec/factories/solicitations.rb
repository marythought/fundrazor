FactoryGirl.define do
  factory :solicitation do
    campaign
    user
    goal 500
    main_image 'https://upload.wikimedia.org/wikipedia/commons/6/63/Owls_@_Dragonheart,_Enschede_(9549651052).jpg'
    text 'I am raising funds to support this campaign. Thank you for your support!'
  end
end
