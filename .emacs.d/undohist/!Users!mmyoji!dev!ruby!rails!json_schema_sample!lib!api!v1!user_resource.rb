
((digest . "af94e44f4d38e0c29cd6fa911e1c53c6") (undo-list nil ("  include JsonWorld::DSL

  property :id,
    type: Integer,
    description: \"unique ID\"
  property :username,
    type: String,
    description: \"unique username\"
  property :email,
    type: String,
    description: \"unique email address\"
  property :password,
    type: String,
    description: \"login password\"
  property :password_confirmation,
    type: String,
    description: \"the same value with `password`\"

  link(
    :list_users,
    description: \"Get user list\",
    path: \"/v1/users\",
    parameters: {
      page: {
        type: Integer
      }
    }
  )

  link(
    :register_user,
    description: \"Create a new user account\",
    path: \"/v1/users\",
    method: :post,
    parameters: {
      email: {
        type: String,
        description: \"unique email address\"
      },
      username: {
        type: String,
        description: \"unique username\"
      },
      password: {
        type: String,
        description: \"login password\"
      },
      password_confirmation: {
        type: String,
        description: \"the same value with `password`\"
      },
      image: {
        type: String,
        optional: true
      }
    }
  )

  link(
    :update_user,
    description: \"Update a user info\",
    path: \"/v1/users/:id\",
    method: :patch,
    parameters: {
      email: {
        type: String,
        description: \"unique email address\"
      },
      username: {
        type: String,
        description: \"unique username\"
      },
      password: {
        type: String,
        description: \"login password\",
        optional: true
      },
      password_confirmation: {
        type: String,
        description: \"the same value with `password`\",
        optional: true
      },
      image: {
        type: String,
        optional: true
      }
    }
  )
" . 40) ((marker . 1) . -965) ((marker) . -1407) ((marker) . -1407) ((marker) . -1389) ((marker) . -1389) ((marker) . -1380) ((marker) . -1380) ((marker) . -1336) ((marker) . -1336) ((marker) . -1314) ((marker) . -1314) ((marker) . -1299) ((marker) . -1299) ((marker) . -1281) ((marker) . -1281) ((marker) . -1261) ((marker) . -1261) ((marker) . -1234) ((marker) . -1234) ((marker) . -1195) ((marker) . -1195) ((marker) . -1177) ((marker) . -1177) ((marker) . -1169) ((marker) . -1169) ((marker) . -1168) ((marker) . -1168) ((marker) . -1164) ((marker) . -1164) ((marker) . -1158) ((marker) . -1158) ((marker) . -1150) ((marker) . -1150) ((marker) . -1127) ((marker) . -1127) ((marker) . -1105) ((marker) . -1105) ((marker) . -1090) ((marker) . -1090) ((marker) . -1081) ((marker) . -1081) ((marker) . -1027) ((marker) . -1027) ((marker) . -1005) ((marker) . -1005) ((marker) . -974) ((marker) . -974) ((marker) . -965) ((marker) . -965) ((marker . 1) . -1806) ((marker . 1) . -1806) ((marker) . -1802) ((marker) . -1802) ((marker) . -1796) ((marker) . -1796) ((marker) . -1788) ((marker) . -1788) ((marker) . -1765) ((marker) . -1765) ((marker) . -1743) ((marker) . -1743) ((marker) . -1728) ((marker) . -1728) ((marker) . -1719) ((marker) . -1719) ((marker) . -1696) ((marker) . -1696) ((marker) . -1641) ((marker) . -1641) ((marker) . -1619) ((marker) . -1619) ((marker) . -1588) ((marker) . -1588) ((marker) . -1579) ((marker) . -1579) ((marker) . -1556) ((marker) . -1556) ((marker) . -1517) ((marker) . -1517) ((marker) . -1495) ((marker) . -1495) ((marker) . -1477) ((marker) . -1477) ((marker) . -1468) ((marker) . -1468) ((marker) . -1429) ((marker) . -1429) ((marker) . -1806) ((marker) . -1806) 1846 (t 21923 12579 0 0) nil (38 . 39) nil ("r" . -38) ((marker) . -1) nil ("R" . -39) ((marker) . -1) nil ("e" . -40) ((marker) . -1) nil ("s" . -41) ((marker) . -1) nil ("o" . -42) ((marker) . -1) nil ("u" . -43) ((marker) . -1) nil ("r" . -44) ((marker) . -1) nil ("c" . -45) ((marker) . -1) nil ("e" . -46) ((marker) . -1) nil (7 . 8) nil (" " . -7) nil ("r" . -8) nil ("e" . -9) nil ("s" . -10) nil ("o" . -11) nil ("u" . -12) nil ("r" . -13) nil ("c" . -14) nil ("e" . -15) nil (" " . -16) (t 21923 12503 0 0) nil (1751 . 1752) nil (nil rear-nonsticky nil 1774 . 1775) (nil fontified nil 1752 . 1775) (1752 . 1775) (t 21923 12497 0 0) nil (1630 . 1635) nil (1621 . 1630) ("optio" . -1621) ((marker*) . 5) nil (1621 . 1626) nil (1612 . 1621) nil (1611 . 1612) (t 21923 12488 0 0) nil ("      password_confirmation: {
        type: String,
        optional: true,
        description: \"required when password is not null\"
      },
" . 1737) ((marker) . -31) ((marker) . -31) ((marker) . -53) ((marker) . -53) ((marker) . -77) ((marker) . -77) ((marker) . -135) ((marker) . -135) ((marker) . -144) ((marker) . -144) ((marker) . -144) ((marker) . -144) 1881 nil ("      email: {
        type: String
      },
      username: {
        type: String
      },
      password: {
        type: String,
        optional: true
      },
" . 1737) ((marker) . -45) ((marker) . -45) ((marker) . -36) ((marker) . -36) ((marker) . -15) ((marker) . -15) ((marker) . -84) ((marker) . -84) ((marker) . -63) ((marker) . -63) ((marker) . -93) ((marker) . -93) ((marker) . -111) ((marker) . -111) ((marker) . -133) ((marker) . -133) ((marker) . -156) ((marker) . -156) ((marker) . -165) ((marker) . -165) ((marker) . -165) ((marker) . -165) 1902 nil (nil rear-nonsticky nil 1736 . 1737) (nil fontified nil 1356 . 1737) (1356 . 1737) (t 21923 12468 0 0) nil (1082 . 1083) nil (1083 . 1087) nil (nil rear-nonsticky nil 1132 . 1133) (nil fontified nil 1083 . 1133) (1083 . 1133) nil (982 . 983) nil (983 . 987) nil (nil rear-nonsticky nil 1016 . 1017) (nil fontified nil 983 . 1017) (983 . 1017) (t 21923 12446 0 0) nil ("," . -846) nil (801 . 802) nil (845 . 846) nil (nil rear-nonsticky nil 845 . 846) (nil fontified nil 802 . 846) (802 . 846) nil ("
" . 938) ((marker) . -1) ((marker) . -1) nil ("        description: \"unique email address\"" . 938) nil (938 . 942) nil (nil rear-nonsticky nil 977 . 978) (nil fontified nil 938 . 978) (938 . 978) (t 21923 12421 0 0) nil (849 . 850) nil (853 . 854) nil (850 . 853) nil (nil rear-nonsticky nil 884 . 885) (nil fontified nil 850 . 885) (850 . 885) (t 21923 12387 0 0) nil ("       " . -426) ((marker) . -7) ((marker) . -7) ("       " . -408) 440 nil ("       " . -339) ((marker) . -7) ((marker) . -7) ("       " . -321) 353 nil ("       " . -259) ((marker) . -7) ((marker) . -7) ("       " . -241) 273 nil (187 . 188) (169 . 170) 187 nil ("        " . -186) ((marker) . -8) ((marker) . -8) ("        " . -169) 202 (t 21923 12364 0 0) nil (118 . 119) (99 . 100) 118 (t 21923 12361 0 0) nil ("  " . -117) ((marker) . -2) ((marker) . -2) ("  " . -99) 121 (t 21923 12358 0 0) nil ("      " . -119) ((marker) . -6) ((marker) . -6) ("      " . -99) 131 (t 21923 12346 0 0) nil (489 . 500) ("  " . 488) (490 . 491) nil (464 . 475) (" " . 463) (464 . 465) nil (388 . 399) ("  " . 387) (389 . 390) nil (363 . 374) ("              " . 362) (376 . 377) nil (294 . 305) ("  " . 293) (295 . 296) nil (269 . 280) ("                 " . 268) (285 . 286) nil (208 . 219) ("  " . 207) (209 . 210) nil (183 . 194) ("              " . 182) (196 . 197) nil (125 . 136) (" " . 124) (125 . 126) nil (99 . 110) ("                    " . 98) (118 . 119) (t 21923 12039 0 0) nil (494 . 498) nil ("o" . -494) nil (492 . 495) nil ("a" . -492) nil ("s" . -493) nil ("s" . -494) nil (492 . 495) nil ("t" . -492) nil ("a" . -493) nil (490 . 494) nil (490 . 491) nil (489 . 490) nil (470 . 489) nil ("e" . -470) nil (469 . 471) nil ("p" . -469) nil ("a" . -470) nil ("s" . -471) nil ("s" . -472) nil ("w" . -473) nil ("o" . -474) nil ("r" . -475) nil ("d" . -476) nil (469 . 477) nil ("u" . -469) nil ("n" . -470) nil ("i" . -471) nil ("q" . -472) nil ("u" . -473) nil ("e" . -474) nil (" " . -475) nil ("e" . -476) nil ("m" . -477) nil ("a" . -478) nil ("i" . -479) nil ("l" . -480) nil (" " . -481) nil ("a" . -482) nil ("d" . -483) nil ("d" . -484) nil ("r" . -485) nil ("e" . -486) nil ("s" . -487) nil ("s" . -488) nil (389 . 403) nil ("s" . 389) nil ("s" . 389) nil ("e" . 389) nil ("r" . 389) nil ("d" . 389) nil ("d" . 389) nil ("a" . 389) nil (" " . 389) nil ("l" . 389) nil ("i" . 389) nil ("a" . 389) nil ("m" . 389) nil ("e" . 389) nil (" " . 389) nil ("e" . 389) nil ("u" . 389) nil ("q" . 389) nil ("i" . 389) nil ("n" . 389) nil ("u" . 389) (t 21923 12002 0 0) nil (98 . 118) ("       " . 98) (166 . 180) (" " . 166) (231 . 248) ("    " . 231) (307 . 321) ("    " . 307) ("   " . -397) nil (391 . 392) nil (374 . 394) nil ("a" . -374) nil (374 . 375) nil ("l" . 374) nil ("i" . 374) nil ("a" . 374) nil ("m" . 374) nil ("e" . 374) nil (298 . 306) nil ("l" . 298) nil ("i" . 298) nil ("a" . 298) nil ("m" . 298) nil ("e" . 298) nil (nil rear-nonsticky nil 431 . 432) (nil fontified nil 359 . 432) (359 . 432) nil (nil rear-nonsticky nil 358 . 359) (nil fontified nil 286 . 359) (286 . 359) (t 21923 11818 0 0) nil (1350 . 1355) nil (1341 . 1350) ("option" . -1341) nil (1341 . 1347) nil (1332 . 1341) nil (1325 . 1332) nil (":" . -1325) nil (1319 . 1326) nil ("r" . -1319) nil ("y" . -1320) nil (1319 . 1321) nil (1310 . 1319) nil (1310 . 1317) nil (1310 . 1311) nil (1309 . 1310) nil (1302 . 1309) nil (1295 . 1302) nil (1294 . 1295) (t 21923 11803 0 0) nil (832 . 837) nil (823 . 832) ("optiona" . -823) nil (826 . 830) nil ("o" . -826) nil ("i" . -827) nil (823 . 828) nil (814 . 823) nil (813 . 814) (t 21923 11796 0 0) nil (801 . 813) nil (792 . 801) nil (792 . 799) nil (792 . 793) nil (791 . 792) nil (784 . 791) nil (777 . 784) nil ("
" . -777) ((marker) . -1) ((marker) . -1) nil ("
" . -778) ((marker) . -1) ((marker) . -1) nil (" " . -779) nil (" " . -780) nil (" " . -781) nil (" " . -782) nil (" " . -783) nil (" " . -784) nil (779 . 785) ("      " . 778) (784 . 785) nil (777 . 784) nil (776 . 777) (t 21923 11776 0 0) nil (1202 . 1216) nil (1182 . 1202) nil ("i" . -1182) nil ("f" . -1183) nil (1182 . 1184) nil (1182 . 1183) nil (1181 . 1182) nil (1180 . 1181) nil (1168 . 1180) ("desc" . -1168) nil (1168 . 1172) nil (1159 . 1168) nil (1153 . 1159) nil (1144 . 1153) ("opt" . -1144) nil (1144 . 1147) nil (1135 . 1144) nil (1134 . 1135) nil (1066 . 1073) nil ("l" . -1066) nil (1065 . 1067) nil ("s" . -1065) nil (1059 . 1066) nil (1050 . 1059) nil (1049 . 1050) nil (nil rear-nonsticky nil 1118 . 1119) (nil fontified nil 918 . 1119) (918 . 1119) nil (917 . 922) nil (917 . 918) nil (916 . 917) nil (915 . 916) nil (904 . 915) ("param" . -904) nil (904 . 909) nil (899 . 904) nil (898 . 899) nil (890 . 898) nil ("s" . -890) nil (884 . 891) nil (879 . 884) nil (878 . 879) (t 21923 11695 0 0) nil (875 . 877) nil ("u" . -875) nil ("s" . -876) nil ("e" . -877) nil ("r" . -878) nil (868 . 879) nil (":" . -868) nil (864 . 869) nil ("v" . -864) nil (864 . 865) nil (864 . 865) nil (863 . 864) nil (857 . 863) nil (852 . 857) nil (851 . 852) nil (832 . 850) nil (832 . 833) nil (831 . 832) nil (830 . 831) nil (818 . 830) ("descr" . -818) nil (818 . 823) nil (813 . 818) nil (800 . 813) nil (795 . 800) nil (795 . 798) nil (795 . 796) nil (794 . 795) nil (790 . 794) nil (788 . 790) ("  " . 787) (789 . 790) nil (786 . 789) nil ("," . -786) nil (786 . 787) (t 21923 11474 0 0) nil (756 . 768) nil (747 . 756) nil (747 . 754) nil (747 . 748) nil (746 . 747) nil (743 . 746) nil (723 . 743) nil (716 . 723) nil (715 . 716) nil ("," . -707) nil (695 . 708) nil (686 . 695) nil (686 . 693) nil (686 . 687) nil (685 . 686) nil (675 . 685) nil (668 . 675) nil (667 . 668) nil (647 . 659) nil (638 . 647) nil (638 . 645) nil (638 . 639) nil (637 . 638) nil (627 . 637) nil (620 . 627) nil (619 . 620) nil (599 . 611) nil (590 . 599) nil (590 . 597) nil (590 . 591) nil (589 . 590) nil (586 . 589) nil (";" . -586) nil (582 . 587) nil ("m" . -582) nil ("e" . -583) nil ("i" . -584) nil ("a" . -585) nil (582 . 586) nil ("u" . -582) nil ("s" . -583) nil ("e" . -584) nil ("r" . -585) nil ("n" . -586) nil ("a" . -587) nil ("m" . -588) nil ("e" . -589) nil (":" . -590) nil (582 . 591) nil (575 . 582) nil ("
" . 576) nil ("      }" . 576) nil ("
" . 576) nil ("      " . 576) nil ("        type: Integer" . 582) nil ("
" . 582) nil ("page: {" . 582) (t 21923 11418 0 0) nil (549 . 557) nil ("s" . -549) nil (543 . 550) nil (538 . 543) (t 21923 11411 0 0) nil (506 . 513) nil ("t" . 506) nil ("s" . 506) nil ("i" . 506) nil ("l" . 506) nil (495 . 501) nil (488 . 494) nil ("e" . 488) nil ("t" . 488) nil ("a" . 488) nil ("e" . 488) nil ("r" . 488) nil ("C" . 488) nil (455 . 463) nil ("e" . 455) nil ("t" . 455) nil ("a" . 455) nil ("e" . 455) nil ("r" . 455) nil ("c" . 455) nil (488 . 493) nil ("a" . -488) nil ("e" . -489) nil ("t" . -490) nil (" " . -491) nil (486 . 492) nil (" " . 486) nil ("t" . 486) nil ("e" . 486) nil ("G" . 486) (t 21923 11390 0 0) nil (461 . 466) nil (")" . -461) ((marker*) . 1) ((marker) . -1) nil ("u" . -462) nil (461 . 463) nil (457 . 461) nil ("a" . -457) nil ("e" . -458) nil (458 . 459) nil ("t" . -458) nil ("e" . -459) nil (455 . 460) nil ("s" . 455) nil ("r" . 455) nil ("e" . 455) nil ("s" . 455) nil ("u" . 455) nil ("_" . 455) nil ("t" . 455) nil ("s" . 455) nil ("i" . 455) nil ("l" . 455) (t 21923 11364 0 0) nil ("  " . 441) (441 . 443) (441 . 442) nil (nil rear-nonsticky nil 594 . 595) (nil fontified nil 441 . 595) (441 . 595) (t 21923 11335 0 0) nil ("  " . 82) (82 . 84) (82 . 83) nil (nil rear-nonsticky nil 284 . 285) (nil fontified nil 82 . 285) (82 . 285) (t 21923 11296 0 0) nil ("      users: {
        items: {
          type: Api::V1::User
        },
        unique: true
      },
" . 183) ((marker) . -15) ((marker) . -103) 286 (t 21923 10833 0 0) nil (270 . 276) nil (" " . -270) nil (":" . -271) nil (264 . 272) nil (255 . 264) nil (254 . 255) (t 21923 10824 0 0) nil ("," . -254) (t 21923 10820 0 0) nil ("
" . 256) nil ("        " . 256) nil (256 . 264) ("  " . -253) (257 . 258) nil (255 . 257) nil (244 . 255) nil (215 . 225) (" " . 214) (215 . 216) nil (214 . 221) nil (213 . 214) (t 21923 10500 0 0) nil ("s" . 89) (t 21923 10455 0 0) nil ("
" . 83) ((marker) . -1) ((marker) . -1) (t 21923 10454 0 0) nil ("  property :id,       type: Integer, description: \"unique ID\"
  property :username, type: String,  description: \"unique username\"
  property :email,    type: String,  description: \"unique email address\"
" . 83) ((marker) . -203) 286 (t 21923 10408 0 0) nil ("ww" . 286) nil (286 . 288) (t 21923 10408 0 0) nil ("R" . -431) nil ("e" . -432) nil ("s" . -433) nil ("o" . -434) nil ("u" . -435) nil ("r" . -436) nil ("c" . -437) nil ("e" . -438) (t 21923 10275 0 0) nil (362 . 367) nil ("U" . -362) nil (359 . 363) nil ("a" . -359) nil ("p" . -360) nil ("i" . -361) nil ("/" . -362) nil (358 . 363) (t 21923 10267 0 0) nil (331 . 344) nil ("G" . -331) nil ("e" . -332) nil ("t" . -333) nil (" " . -334) nil (331 . 335) (t 21923 10257 0 0) nil ("," . -462) nil (455 . 463) nil ("S" . -455) nil ("t" . -456) nil ("r" . -457) nil (449 . 458) nil (440 . 449) nil (440 . 447) nil (440 . 441) nil (439 . 440) nil (433 . 439) nil (426 . 433) nil (425 . 426) (t 21923 10201 0 0) nil (396 . 417) ("Api::V" . -396) nil (389 . 402) nil (380 . 389) nil (387 . 388) nil (" " . -387) ((marker) . -1) ((marker) . -1) nil (" " . -388) ((marker) . -1) ((marker) . -1) nil ("      }" . 389) ((marker) . -6) nil ("
" . 389) nil ("type: Array, " . 389) ((marker) . -6) nil (396 . 402) nil ("A" . -396) nil (396 . 397) nil ("p" . -396) nil ("i" . -397) nil (":" . -398) nil (":" . -399) nil ("V" . -400) nil ("1" . -401) nil (":" . -402) nil (":" . -403) nil ("U" . -404) nil ("s" . -405) nil ("e" . -406) nil ("r" . -407) nil ("R" . -408) nil ("e" . -409) nil ("s" . -410) nil ("o" . -411) nil ("u" . -412) nil ("r" . -413) nil ("c" . -414) nil ("e" . -415) (t 21923 10103 0 0) nil (22 . 28) nil ("S" . -22) nil (21 . 23) nil (1 . 21) nil ("P" . 2) nil (2 . 3) nil (1 . 2) (t 21923 10086 0 0) nil (367 . 388) ("Api::V1::UserRes" . -367) nil (380 . 383) nil ("E" . -380) nil (363 . 381) nil ("l" . -363) nil ("e" . -364) nil (":" . -365) nil (" " . -366) nil (361 . 367) nil (352 . 361) nil ("
      " . 337) nil (337 . 344) nil (352 . 359) nil (352 . 353) nil (351 . 352) nil (344 . 351) nil (337 . 344) nil (337 . 342) nil (337 . 338) nil (336 . 337) nil (324 . 336) nil (319 . 324) nil (317 . 319) nil (316 . 317) nil (310 . 316) nil (305 . 310) nil (303 . 305) nil (302 . 303) nil (301 . 302) nil (":" . -301) nil (" " . -302) nil (301 . 303) nil (289 . 301) ("descrip" . -289) nil (289 . 296) nil (284 . 289) nil (" " . -284) nil (275 . 285) nil ("t" . -275) nil ("," . -276) nil (275 . 277) nil ("u" . -275) nil ("s" . -276) nil ("t" . -277) nil ("e" . -278) nil ("a" . -279) nil (272 . 280) nil (267 . 272) nil (267 . 270) nil (267 . 268) nil (266 . 267) nil (261 . 266) nil (259 . 261) ("  " . 258) (260 . 261) nil (257 . 260) (t 21923 9981 0 0) nil (nil rear-nonsticky nil 257 . 258) (nil fontified nil 54 . 258) (54 . 258) (t 21923 9975 0 0) nil (57 . 58) 29 nil (39 . 53) ("Json" . -39) nil (":" . -43) nil (":" . -44) nil (33 . 45) nil ("d" . -33) nil (31 . 34) nil (28 . 31) nil (" " . -28) nil (14 . 29) nil ("/" . -14) nil (6 . 15) (6 . 10) nil (1 . 6) nil ("C" . -1) nil (1 . 2) nil ("m" . -1) nil ("o" . -2) nil ("d" . -3) nil ("u" . -4) nil ("l" . -5) nil ("e" . -6) nil (1 . 7) (t . -1)))
