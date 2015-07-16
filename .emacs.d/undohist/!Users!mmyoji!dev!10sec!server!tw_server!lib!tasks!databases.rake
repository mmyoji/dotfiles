
((digest . "f27d25aa27932ce7e414e72e5f4bdabf") (undo-list nil ("
" . 2507) ((marker) . -1) ((marker) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker . 2507) . -1) ((marker) . -1) ((marker) . -1) nil ("  namespace :seed_fu do
    desc 'load seed data'
    task custom: :environment do
      prior_loaded_paths = \"#{Rails.root}/db/fixtures/prior\"
      loaded_order = %w(users)
      loaded_order.each do |file_name|
        SeedFu.seed(prior_loaded_paths, /#{file_name}/)
      end

      fixture_paths = \"#{Rails.root}/db/fixtures\"
      SeedFu.seed(fixture_paths)
    end
  end
" . 2508) ((marker) . -331) ((marker) . -331) ((marker) . -281) ((marker) . -281) ((marker) . -280) ((marker) . -280) ((marker) . -270) ((marker) . -270) ((marker) . -214) ((marker) . -214) ((marker) . -175) ((marker) . -175) ((marker) . -144) ((marker) . -144) ((marker) . -83) ((marker) . -83) ((marker) . -50) ((marker) . -50) ((marker) . -24) ((marker) . -24) ((marker) . -372) ((marker) . -372) ((marker) . -378) ((marker) . -378) ((marker . 2507) . -110) ((marker . 2507) . -124) ((marker . 2507) . -111) ((marker . 2507) . -124) ((marker . 2507) . -112) ((marker . 2507) . -124) ((marker . 2507) . -255) ((marker . 2507) . -267) ((marker . 2507) . -255) ((marker . 2507) . -267) ((marker . 2507) . -256) ((marker . 2507) . -267) ((marker . 2507) . -303) ((marker . 2507) . -317) ((marker . 2507) . -304) ((marker . 2507) . -317) ((marker . 2507) . -305) ((marker . 2507) . -317) ((marker . 2507) . -83) ((marker . 2507) . -127) ((marker) . -364) ((marker) . -364) ((marker) . -378) ((marker) . -378) 2886 (t 21904 44389 0 0)))
