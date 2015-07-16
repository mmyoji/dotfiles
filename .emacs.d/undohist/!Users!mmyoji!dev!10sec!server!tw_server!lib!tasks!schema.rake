
((digest . "7b71cbb8b08d7660aa0e17e51d1cf59e") (undo-list nil (41 . 49) nil (41 . 42) nil (40 . 41) nil (35 . 40) nil (35 . 36) nil (34 . 35) (t 21926 19531 0 0) nil (34 . 35) nil ("  " . -1042) ("  " . -1002) ("  " . -995) ("  " . -925) ("  " . -889) ("  " . -882) ("  " . -843) ("  " . -804) ("  " . -797) ("  " . -753) ("  " . -714) ("  " . -626) ("  " . -586) ("  " . -579) ("  " . -545) ("  " . -506) ("  " . -466) ("  " . -458) ("  " . -335) ("  " . -311) ("  " . -288) ("  " . -263) ("  " . -239) ("  " . -231) ("  " . -196) ("  " . -173) ("  " . -142) ("  " . -109) ("  " . -75) ("  " . -34) 1106 nil ("
" . 1106) ((marker . 1064) . -1) ((marker . 1064) . -1) ((marker . 1064) . -1) ((marker . 1064) . -1) ((marker . 1064) . -1) ((marker . 1064) . -1) ((marker . 1064) . -1) ((marker . 1064) . -1) ((marker . 1064) . -1) ((marker) . -1) nil ("end" . 1106) ((marker) . -3) nil (1 . 8) (t 21926 19370 0 0) nil (" " . 699) nil (" " . 699) nil (" " . 699) (t 21926 19352 0 0) nil ("
" . 173) (t 21926 19349 0 0) nil (60 . 69) nil (40 . 60) nil ("e" . -40) nil ("s" . -41) nil (" " . -42) nil (29 . 43) nil (26 . 29) (t 21926 19336 0 0) nil ("
  puts \"bobobo\"
" . 130) ((marker) . -17) 147 (t 21926 19326 0 0) nil (139 . 145) nil (139 . 140) nil (138 . 139) nil (133 . 138) nil (131 . 133) ("  " . 130) (132 . 133) nil (129 . 132) (t 21926 19314 0 0) nil ("
" . 1064) nil ("
" . 1064) ((marker . 1064) . -1) ((marker . 559) . -1) ((marker . 1064) . -1) ((marker . 1064) . -1) ((marker . 1064) . -1) ((marker . 1064) . -1) ((marker . 1064) . -1) ((marker . 1064) . -1) ((marker . 1064) . -1) ((marker . 1064) . -1) nil (1054 . 1056) (1012 . 1014) (1003 . 1005) (931 . 933) (893 . 895) (884 . 886) (843 . 845) (802 . 804) (793 . 795) (747 . 749) (706 . 708) (613 . 615) (571 . 573) (562 . 564) (526 . 528) (485 . 487) (443 . 445) (433 . 435) (302 . 310) ("      " . 302) (282 . 284) (251 . 259) ("      " . 251) (224 . 232) ("      " . 224) (198 . 206) ("      " . 198) (194 . 196) (157 . 159) (132 . 134) (98 . 100) (63 . 65) (27 . 29) 1002 nil (nil rear-nonsticky nil 1001 . 1002) (nil fontified nil 27 . 1002) (27 . 1002) nil ("require 'prmd/rake_tasks/combine'
require 'prmd/rake_tasks/verify'
require 'prmd/rake_tasks/doc'


namespace :schema do
  task generate: :environment do
    [
      V2::UserResource,
      V2::OrderResource,
      V2::ReviewResource
    ].each do |klass|
      File.write(Rails.root.join('docs', 'schema', 'schemata', \"#{klass.identifier.underscore}.json\"), klass.to_json_schema)
    end
    Rake::Task[\"schema:combine\"].invoke
    Rake::Task[\"schema:verify\"].invoke
    Rake::Task[\"schema:doc\"].invoke
  end

  Prmd::RakeTasks::Combine.new do |t|
    t.options[:meta] = 'docs/schema/meta.json'    # use meta.yml if you prefer YAML format
    t.paths << 'docs/schema/schemata/'
    t.output_file = 'docs/schema/schema.json'
  end

  Prmd::RakeTasks::Verify.new do |t|
    t.files << 'docs/schema/schema.json'
  end

  Prmd::RakeTasks::Doc.new do |t|
    t.files = { 'docs/schema/schema.json' => 'docs/schema/schema.md'  }
  end

  task default: [:combine, :verify, :doc]
end
" . 32) ((marker . 1064) . -98) ((marker . 559) . -98) ((marker . 1064) . -318) ((marker . 1064) . -349) ((marker . 1064) . -319) ((marker . 1064) . -349) ((marker . 1064) . -320) ((marker . 1064) . -349) ((marker) . -975) 1007 nil ("" . 1007) nil ("." . 1005) nil (1005 . 1006) nil (1007 . 1008) nil (24 . 26) nil (4 . 24) nil ("a" . -4) nil ("i" . -5) nil (3 . 6) (3 . 7) (" x
" . -3) (3 . 6) ("
" . -1) (1 . 2) 3 nil (1 . 3) nil (2 . 3) nil (1 . 2) nil ("
" . 99) ((marker) . -1) ((marker) . -1) ((marker . 1064) . -1) ((marker . 559) . -1) ((marker) . -1) nil ("puts Rails.env" . 99) ((marker) . -14) (t 21926 19267 0 0) nil ("?" . -113) nil (104 . 114) nil ("\"fooofoofooofooo\"" . 104) ((marker) . -17) (t 21926 19248 0 0) nil (105 . 120) nil (105 . 106) nil (104 . 105) nil (99 . 104) nil (98 . 99) nil (97 . 98) (t 21926 18581 0 0)))
