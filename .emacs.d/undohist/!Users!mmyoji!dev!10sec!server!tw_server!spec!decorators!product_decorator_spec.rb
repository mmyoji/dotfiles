
((digest . "ab44f5d3e2e1cd226a8a097ad17f02cc") (undo-list nil ("    " . 2433) (2433 . 2437) (2433 . 2434) (t 21918 2843 0 0) nil ("
" . 2362) ((marker) . -1) ((marker) . -1) ((marker . 2362) . -1) ((marker . 2362) . -1) ((marker) . -1) (t 21918 2842 0 0) nil ("
    context 'without state' do
      let(:user) { FactoryGirl.create(:user, state: nil, city: city) }
      it { is_expected.to eq city }
    end

    context 'without city' do
      let(:user) { FactoryGirl.create(:user, state: state, city: nil) }
      it { is_expected.to eq state }
    end

    context 'without state and city' do
      let(:user) { FactoryGirl.create(:user, state: nil, city: nil) }
      it { is_expected.to eq '-' }
    end
" . 2482) ((marker) . -1) ((marker) . -1) ((marker) . -32) ((marker) . -32) ((marker) . -103) ((marker) . -103) ((marker) . -449) ((marker) . -449) ((marker) . -441) ((marker) . -441) ((marker) . -406) ((marker) . -406) ((marker) . -336) ((marker) . -336) ((marker) . -296) ((marker) . -296) ((marker) . -295) ((marker) . -295) ((marker) . -287) ((marker) . -287) ((marker) . -250) ((marker) . -250) ((marker) . -178) ((marker) . -178) ((marker) . -148) ((marker) . -148) ((marker) . -147) ((marker) . -147) ((marker) . -139) ((marker) . -139) ((marker . 2482) . -336) ((marker . 2482) . -336) ((marker) . -449) ((marker) . -449) 2931 nil ("  " . -2438) ("  " . -2367) 2486 nil ("
" . 2486) ((marker) . -1) ((marker) . -1) ((marker) . -1) nil ("    end" . 2486) ((marker) . -7) nil ("
" . 2363) ((marker) . -1) ((marker) . -1) ((marker) . -1) nil ("    context 'with state and city' do" . 2363) ((marker) . -36) (t 21918 2713 0 0) nil ("," . -2235) nil (" " . -2236) nil ("f" . -2237) nil ("o" . -2238) nil ("c" . -2239) nil ("u" . -2240) nil ("s" . -2241) nil (";" . -2242) nil (2242 . 2243) nil (": true" . 2242) (t 21918 2644 0 0) nil ("." . 2213) (2212 . 2213) ("            " . 2212) nil (2212 . 2224) (" " . 2212) (2213 . 2214) (t 21918 2644 0 0) nil (2242 . 2248) nil (";" . -2242) nil (2240 . 2243) nil ("u" . -2240) nil (2235 . 2241) (t 21915 20498 0 0)))
