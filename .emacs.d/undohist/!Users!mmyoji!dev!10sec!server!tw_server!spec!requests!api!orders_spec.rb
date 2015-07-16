
((digest . "7f0db692b5f00321cd9985c295ec5c87") (undo-list nil ("  Api::OrdersController.validates :sold do
    integer :per_page
    integer :page
  end
  describe \"GET /v2/orders/sold\" do
    include_context 'api_auth'
    before { FactoryGirl.create(:order, seller: user) }
    it 'list orders' do
      is_expected.to eq 200
    end
  end

  Api::OrdersController.validates :bought do
    integer :per_page
    integer :page
  end
  describe \"GET /v2/orders/bought\" do
    include_context 'api_auth'
    before { FactoryGirl.create(:order) }

    it 'list orders' do
      is_expected.to eq 200
    end
  end

" . 1019) ((marker . 1019) . -549) ((marker . 1750) . -549) ((marker . 1750) . -549) ((marker . 1778) . -548) ((marker . 1778) . -548) ((marker . 1786) . -542) ((marker . 1786) . -542) ((marker . 1792) . -534) ((marker . 1792) . -534) ((marker . 1793) . -506) ((marker . 1793) . -506) ((marker . 1838) . -482) ((marker . 1838) . -482) ((marker . 1870) . -481) ((marker . 1870) . -481) ((marker . 1876) . -439) ((marker . 1876) . -439) ((marker . 1919) . -408) ((marker . 1919) . -408) ((marker . 1950) . -370) ((marker . 1950) . -370) ((marker . 2005) . -364) ((marker . 2005) . -364) ((marker . 2036) . -346) ((marker . 2036) . -346) ((marker . 2061) . -324) ((marker . 2061) . -324) ((marker . 2089) . -279) ((marker . 2089) . -279) ((marker . 2097) . -278) ((marker . 2097) . -278) ((marker . 2103) . -272) ((marker . 2103) . -272) ((marker . 2317) . -43) ((marker . 2317) . -43) ((marker . 2286) . -65) ((marker . 2286) . -65) ((marker . 2242) . -83) ((marker . 2242) . -83) ((marker . 2241) . -89) ((marker . 2241) . -89) ((marker . 2235) . -125) ((marker . 2235) . -125) ((marker . 2217) . -156) ((marker . 2217) . -156) ((marker . 2181) . -212) ((marker . 2181) . -212) ((marker . 2149) . -236) ((marker . 2149) . -236) ((marker . 2104) . -264) ((marker . 2104) . -264) ((marker . 1019) . -549) ((marker . 1019) . -549) ((marker) . -549) ((marker) . -549) 1568 (t 21924 62068 0 0) nil (142 . 1552) ("end
  describe \"GET /v2/orders\" do
    include_context 'api_auth'
    let!(:order) { FactoryGirl.create(:order, seller: user) }
    it 'list orders' do
      is_expected.to eq 200
      expect(response_json[:data][:orders][0][:type]).to eq 'selling'" . 142) (t 21924 62036 0 0) nil ("  Api::OrdersController.validates :sold do
    integer :per_page
    integer :page
  end
  describe \"GET /v2/orders/sold\" do
    include_context 'api_auth'
    before { FactoryGirl.create(:order, seller: user) }
    it 'list orders' do
      is_expected.to eq 200
    end
  end

  Api::OrdersController.validates :bought do
    integer :per_page
    integer :page
  end
  describe \"GET /v2/orders/bought\" do
    include_context 'api_auth'
    before { FactoryGirl.create(:order) }

    it 'list orders' do
      is_expected.to eq 200
    end
  end

" . 407) ((marker . 1019) . -216) ((marker) . -549) nil ("f" . 623) nil (407 . 957) (t 21924 62018 0 0) nil ("  Api::OrdersController.validates :sold do
    integer :per_page
    integer :page
  end
  describe \"GET /v2/orders/sold\" do
    include_context 'api_auth'
    before { FactoryGirl.create(:order, seller: user) }
    fit 'list orders' do
      is_expected.to eq 200
    end
  end

  Api::OrdersController.validates :bought do
    integer :per_page
    integer :page
  end
  describe \"GET /v2/orders/bought\" do
    include_context 'api_auth'
    before { FactoryGirl.create(:order) }

    it 'list orders' do
      is_expected.to eq 200
    end
  end

" . 407) ((marker) . -550) 957 (t 21924 61972 0 0) nil (623 . 624) (t 21924 59814 0 0)))
