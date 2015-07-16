
((digest . "41c7c9c03311311c27d4ecef5cb1df1e") (undo-list nil ("
" . 194) ((marker . 194) . -1) ((marker . 194) . -1) ((marker . 194) . -1) ((marker . 194) . -1) ((marker . 194) . -1) ((marker . 194) . -1) ((marker . 194) . -1) ((marker . 194) . -1) ((marker . 194) . -1) ((marker . 194) . -1) ((marker . 194) . -1) ((marker . 194) . -1) ((marker . 194) . -1) ((marker . 194) . -1) ((marker) . -1) (t 21922 28875 0 0) nil (178 . 190) nil (177 . 179) nil (164 . 165) nil (151 . 164) nil (150 . 152) nil (nil rear-nonsticky nil 163 . 164) (nil fontified nil 153 . 164) (153 . 164) nil (146 . 152) nil ("o" . -146) nil ("r" . -147) nil ("e" . -148) nil (142 . 149) nil (141 . 142) (t 21922 28830 0 0) nil ("const chat = new Vue({
  el: \"#chat-area\",

  data: {
    newMessage: \"\",

    chatList: [
      { message: \"aaa\", from: \"user\" },
      { message: \"bbb\", from: \"agent\" },
      { message: \"cccc\", from: \"user\" },
      { message: \"dddd\", from: \"agent\" },
      { message: \"eeeeee\", from: \"user\" }
    ]
  },

  methods: {
    createMessage: function(event) {
      event.stopPropagation();
      event.preventDefault();

      var newMessage = this.newMessage.trim();
      if ( !newMessage) {
        return;
      }
      var newMsgObj = {
        message: newMessage,
        from: \"user\"
      };
      this.chatList.push(newMsgObj);
      this.newMessage = \"\";
      var bottomOfMessage = $(\"#chat-view > ul\").height();
      $(\"#chat-view\").animate({ scrollTop: bottomOfMessage });
    }
  }
});
" . 143) ((marker . 194) . -802) ((marker . 169) . -802) ((marker) . -802) ((marker) . -172) ((marker) . -172) ((marker) . -601) ((marker) . -601) ((marker) . -43) ((marker) . -43) ((marker) . -44) ((marker) . -44) ((marker) . -54) ((marker) . -54) ((marker) . -74) ((marker) . -74) ((marker) . -390) ((marker) . -390) ((marker) . -794) ((marker) . -794) ((marker) . -421) ((marker) . -421) ((marker) . -468) ((marker) . -468) ((marker) . -131) ((marker) . -131) ((marker) . -309) ((marker) . -91) ((marker) . -91) ((marker) . -75) ((marker) . -75) ((marker) . -420) ((marker) . -420) ((marker) . -213) ((marker) . -213) ((marker) . -297) ((marker) . -297) ((marker) . -303) ((marker) . -303) ((marker) . -359) ((marker) . -359) ((marker) . -308) ((marker) . -308) ((marker) . -309) ((marker) . -309) ((marker) . -798) ((marker) . -798) ((marker) . -322) ((marker) . -322) ((marker) . -23) ((marker) . -23) ((marker) . -494) ((marker) . -494) ((marker . 194) . -694) ((marker) . -542) ((marker) . -542) ((marker) . -255) ((marker) . -255) ((marker) . -236) ((marker) . -510) ((marker) . -510) ((marker) . -280) ((marker) . -626) ((marker) . -518) ((marker) . -518) ((marker) . -571) ((marker) . -571) ((marker) . -725) ((marker) . -725) ((marker) . -592) ((marker) . -592) ((marker) . -638) ((marker) . -638) ((marker) . -788) ((marker) . -788) ((marker) . -666) ((marker) . -666) ((marker . 194) . -591) ((marker . 194) . -91) ((marker) . -6) ((marker) . -10) ((marker) . -802) ((marker) . -802) (t 21922 28789 0 0) nil ("" . 945) nil (945 . 946) (t 21922 28789 0 0) nil ("const agents = [
  {
    name: \"Toudou\",
    messages: [
      { message: \"aaa\", from: \"user\" },
      { message: \"bbb\", from: \"agent\" },
      { message: \"cccc\", from: \"user\" },
      { message: \"dddd\", from: \"agent\" },
      { message: \"eeeeee\", from: \"user\" }
    ]
  },
  {
    name: \"Imagama\",
    messages: [
      { message: \"aaa\", from: \"agent\" },
      { message: \"bbb\", from: \"agent\" },
      { message: \"cccc\", from: \"user\" },
      { message: \"dddd\", from: \"agent\" },
      { message: \"eeeeee\", from: \"agent\" }
    ]
  },
  {
    name: \"Sasaki\",
    messages: [
      { message: \"aaa\", from: \"user\" },
      { message: \"bbb\", from: \"user\" },
      { message: \"cccc\", from: \"user\" },
      { message: \"dddd\", from: \"agent\" },
      { message: \"eeeeee\", from: \"user\" }
    ]
  }
];

" . 142) ((marker) . -789) ((marker) . -789) ((marker) . -278) ((marker) . -278) ((marker) . -538) ((marker) . -538) ((marker) . -179) ((marker) . -179) ((marker) . -529) ((marker) . -529) ((marker) . -523) ((marker) . -523) ((marker) . -792) ((marker) . -792) ((marker) . -793) ((marker) . -793) ((marker) . -534) ((marker) . -534) ((marker) . -785) ((marker) . -785) ((marker) . -737) ((marker) . -737) ((marker) . -695) ((marker) . -695) ((marker) . -558) ((marker) . -558) ((marker) . -654) ((marker) . -654) ((marker) . -614) ((marker) . -614) ((marker) . -138) ((marker) . -138) ((marker) . -574) ((marker) . -574) ((marker) . -480) ((marker) . -480) ((marker . 169) . -438) ((marker) . -356) ((marker) . -356) ((marker) . -779) ((marker) . -779) ((marker) . -438) ((marker) . -438) ((marker) . -397) ((marker) . -397) ((marker) . -315) ((marker) . -315) ((marker) . -263) ((marker) . -263) ((marker) . -299) ((marker) . -299) ((marker) . -274) ((marker) . -274) ((marker) . -221) ((marker) . -221) ((marker) . -269) ((marker) . -269) ((marker . 169) . -17) ((marker . 169) . -57) ((marker . 169) . -17) ((marker . 169) . -274) ((marker . 169) . -534) ((marker) . -793) 935 (t 21922 28739 0 0) nil ("const agentList = new Vue({
  el: \"#agents-list\",
  data: {
    agents: agents
  },
  methods: {
    selectAgent: function(agent, e) {
      e.preventDefault();
      this.agents.sort(function(a) {
        return a.name !== agent.name;
      });
    }
  }
});

" . 936) ((marker . 83) . -79) ((marker . 83) . -79) ((marker) . -261) ((marker) . -261) ((marker . 1) . -28) ((marker . 1) . -28) ((marker . 4) . -50) ((marker . 4) . -50) ((marker . 79) . -60) ((marker . 79) . -60) ((marker . 84) . -84) ((marker . 84) . -84) ((marker . 112) . -97) ((marker . 112) . -97) ((marker . 141) . -135) ((marker . 141) . -135) ((marker) . -260) ((marker) . -260) ((marker . 142) . -161) ((marker . 142) . -161) ((marker . 194) . -79) ((marker . 194) . -79) ((marker . 194) . -246) ((marker . 194) . -79) ((marker) . -261) 1197 (t 21922 28690 0 0) nil (1156 . 1157) nil ("=" . 1156) (t 21922 28655 0 0) nil (1170 . 1171) nil (1142 . 1149) nil (1151 . 1163) nil (" " . -1151) nil (1146 . 1152) nil ("e" . -1146) nil ("m" . -1147) nil (1142 . 1148) nil (1133 . 1142) nil (1129 . 1130) nil (1132 . 1139) nil (1120 . 1133) nil ("c" . -1120) nil ("u" . -1121) nil ("n" . -1122) nil (1121 . 1123) nil ("i" . -1121) nil (1120 . 1122) nil (1103 . 1122) nil ("a" . -1103) nil ("g" . -1104) nil ("e" . -1105) nil ("n" . -1106) nil ("t" . -1107) nil ("s" . -1108) nil (1108 . 1109) nil ("." . -1108) nil (1103 . 1109) nil ("debugger;" . 1103) (t 21922 28522 0 0) nil (1103 . 1112) nil (1096 . 1103) nil ("
" . 1097) ((marker . 142) . -1) ((marker . 142) . -1) nil ("      this.agents.sort" . 1097) ((marker . 194) . -6) nil (1107 . 1119) nil ("l" . -1107) nil (1103 . 1108) nil ("this.currentAgent = agent;" . 1103) ((marker . 194) . -5) (t 21922 28510 0 0) nil ("," . -1014) nil ("
" . 1016) ((marker . 169) . -1) ((marker) . -1) ((marker) . -1) ((marker . 194) . -1) ((marker . 194) . -1) nil ("    currentAgent: agents[0]" . 1016) (t 21922 28435 0 0) nil (1149 . 1158) nil (1137 . 1149) ("curre" . -1137) nil (1136 . 1142) nil ("c" . -1136) nil (1132 . 1137) (t 21922 28421 0 0) nil (1041 . 1042) nil (1040 . 1042) nil (1020 . 1040) nil (1015 . 1020) nil (1014 . 1015) (t 21922 28281 0 0) nil ("t" . 1078) nil ("n" . 1078) nil ("e" . 1078) nil ("v" . 1078) nil ("t" . 1067) nil ("n" . 1067) nil ("e" . 1067) nil ("v" . 1067) nil (1059 . 1066) nil (1097 . 1104) nil (1094 . 1097) nil (1080 . 1094) ("pre" . -1080) nil (1077 . 1083) nil ("l" . -1077) nil ("t" . -1078) nil (1075 . 1079) nil ("e" . -1075) nil ("n" . -1076) nil ("t" . -1077) nil (1074 . 1078) nil (1067 . 1074) nil (1067 . 1072) nil (1048 . 1068) nil (";" . -1048) nil (" " . -1049) nil (1043 . 1050) nil ("S" . -1043) nil (1040 . 1044) nil ("d" . -1040) nil (1036 . 1041) nil ("s" . -1036) nil (1036 . 1037) nil (" " . -1036) nil ("f" . -1037) nil ("u" . -1038) nil ("n" . -1039) nil ("c" . -1040) nil (1037 . 1041) nil (1032 . 1037) nil (1032 . 1035) nil (1022 . 1033) nil (1019 . 1022) nil (1018 . 1019) (t 21922 28037 0 0) nil (1008 . 1014) nil ("[" . -1008) nil ("      
    ]
" . 1010) ((marker . 112) . -7) ((marker . 112) . -7) ((marker . 141) . -13) ((marker . 141) . -13) ((marker . 194) . -13) ((marker . 194) . -13) ((marker) . -13) 1023 (t 21922 28027 0 0) nil ("," . -930) (t 21922 28024 0 0) nil (787 . 791) nil ("t" . 787) nil ("n" . 787) nil ("e" . 787) nil ("g" . 787) nil ("a" . 787) nil (656 . 661) nil ("r" . 656) nil ("e" . 656) nil ("s" . 656) nil ("u" . 656) nil (488 . 493) nil ("r" . 488) nil ("e" . 488) nil ("s" . 488) nil ("u" . 488) nil (689 . 695) nil ("u" . 689) nil ("o" . 689) nil ("T" . 689) nil ("d" . 690) nil ("u" . 690) nil ("o" . 690) nil (431 . 438) nil ("u" . 431) nil ("o" . 431) nil ("d" . 431) nil ("u" . 431) nil ("o" . 431) nil ("T" . 431) nil (nil rear-nonsticky nil 929 . 930) (nil fontified nil 673 . 930) (673 . 930) nil (nil rear-nonsticky nil 672 . 673) (nil fontified nil 416 . 673) (416 . 673) nil (414 . 415) (t 21922 27989 0 0) nil (174 . 180) nil (nil rear-nonsticky nil 398 . 399) (nil fontified nil 193 . 399) (193 . 399) nil (192 . 197) nil (181 . 193) nil (176 . 181) nil (177 . 179) (" " . 176) (177 . 178) nil (163 . 167) (" " . 162) (163 . 164) nil (171 . 173) nil (" " . -171) nil (162 . 172) nil (161 . 163) nil (158 . 161) nil (158 . 159) nil (159 . 160) nil ("}" . 160) nil (157 . 159) nil ("{" . -157) nil (158 . 159) nil (142 . 159) nil (140 . 142) nil (215 . 222) nil (215 . 220) nil ("      
    }
" . 217) ((marker) . -13) ((marker) . -13) ((marker) . -7) ((marker) . -7) ((marker) . -13) 230 nil (214 . 216) nil ("{" . -214) nil (215 . 222) nil (215 . 220) nil (211 . 216) nil (":" . -211) nil (" " . -212) nil (206 . 213) nil (201 . 206) nil (201 . 204) nil (194 . 202) nil (188 . 189) nil ("e" . -188) nil (178 . 189) nil ("p" . 178) nil ("p" . 178) nil ("a" . 178) nil (183 . 186) nil (182 . 183) nil (177 . 181) nil (172 . 178) nil (169 . 172) nil (169 . 170) nil (168 . 170) nil ("}" . -168) ((marker*) . 1) ((marker) . -1) nil (168 . 169) nil (168 . 170) nil (148 . 168) nil ("=" . -148) nil (" " . -149) nil (142 . 150) nil (140 . 142) (t 21922 27662 0 0) nil (768 . 777) ("newMsg" . -768) nil (768 . 774) nil ("}" . 768) nil (" " . 768) ((marker) . -1) nil ("{" . 768) ((marker*) . 1) ((marker) . -1) nil (713 . 721) (" " . 712) (713 . 714) nil (" " . -725) ((marker . 169) . -1) nil (nil rear-nonsticky nil 725 . 726) (nil fontified nil 692 . 726) (692 . 726) nil (683 . 692) nil ("message: newMessage, from: \"user\" " . 720) ((marker) . -34) 754 nil (683 . 690) nil (684 . 685) nil (674 . 684) nil ("e" . -674) nil (666 . 675) nil (659 . 666) (t 21922 27633 0 0) nil (715 . 719) nil (" " . -716) nil (714 . 717) nil ("'" . -714) nil ("'" . -715) nil (706 . 716) (t 21922 27622 0 0) nil (387 . 392) nil ("r" . 387) nil ("e" . 387) nil ("s" . 387) nil ("u" . 387) nil (346 . 350) nil ("a" . -346) nil ("g" . -347) nil ("e" . -348) nil ("n" . -349) nil ("t" . -350) nil (346 . 351) nil ("r" . 346) nil ("e" . 346) nil ("s" . 346) nil ("u" . 346) nil (304 . 309) nil ("r" . 304) nil ("e" . 304) nil ("s" . 304) nil ("u" . 304) nil (nil rear-nonsticky nil 433 . 434) (nil fontified nil 420 . 434) (420 . 434) nil (nil rear-nonsticky nil 390 . 391) (nil fontified nil 377 . 391) (377 . 391) nil (nil rear-nonsticky nil 349 . 350) (nil fontified nil 336 . 350) (336 . 350) nil (nil rear-nonsticky nil 308 . 309) (nil fontified nil 295 . 309) (295 . 309) nil ("
" . 295) ("     " . 297) nil (297 . 302) (295 . 296) nil (264 . 268) nil (261 . 265) nil ("\"" . -261) nil (" " . -262) nil (255 . 263) (t 21922 27430 0 0) nil ("      debugger;
      
        bottomOfMessage += +$(this).height();
      });
" . 726) ((marker . 194) . -22) ((marker) . -79) 805 nil (nil rear-nonsticky nil 724 . 725) (nil fontified nil 695 . 725) (695 . 725) nil ("0" . -695) nil (";" . -696) nil ("$(\"#chat-view > ul\").height();" . 720) ((marker . 194) . -21) nil (741 . 750) nil ("each(function(item) {" . 741) ((marker . 194) . -21) nil ("i" . 738) nil ("l" . 738) nil (" " . 738) nil (">" . 738) nil (" " . 738) (t 21922 27384 0 0) nil (704 . 713) nil (697 . 704) (t 21922 27354 0 0) nil (787 . 797) nil (784 . 786) nil ("s" . -784) nil ("i" . -785) nil (782 . 786) nil (780 . 783) nil ("i" . -780) nil ("t" . -781) nil ("e" . -782) nil ("m" . -783) nil ("." . -784) nil (779 . 785) nil ("i" . -779) nil ("t" . -780) nil ("e" . -781) nil ("m" . -782) nil ("." . -783) nil (775 . 784) nil (775 . 782) nil (752 . 760) (" " . 751) ((marker . 194) . -1) (752 . 753) nil (752 . 767) ("bott" . -752) nil (752 . 756) nil ("h" . -752) nil (751 . 753) nil (744 . 748) nil (735 . 748) nil (730 . 737) nil ("scrollHeight;" . 730) nil ("k" . -730) nil ("e" . -731) nil (730 . 732) nil (698 . 704) (" " . 697) (698 . 699) nil (695 . 698) nil (713 . 718) nil ("
" . 667) nil ("      debugger;" . 667) (t 21922 27050 0 0) nil (673 . 682) nil (666 . 673) (t 21922 26955 0 0) nil (791 . 792) (t 21922 26812 0 0) nil ("      
        bottomOfMessage += list.height;
      });
" . 730) ((marker . 194) . -15) ((marker) . -57) 787 nil (";" . -728) nil (nil rear-nonsticky nil 728 . 729) (nil fontified nil 695 . 729) (695 . 729) nil ("0" . -695) nil ("$(\"#chat-view > ul\").scrollHeight;" . 704) nil (737 . 738) nil ("(" . -737) ((marker) . -1) ((marker*) . 1) ((marker) . -1) nil (")" . -738) ((marker*) . 1) ((marker) . -1) nil (732 . 739) nil ("i" . -732) nil ("e" . -733) nil ("g" . -734) nil (725 . 735) nil ("children.forEach(function(list, idx) {" . 725) (t 21922 26475 0 0) nil (729 . 733) nil ("r" . -729) nil ("e" . -730) nil (724 . 731) nil (" " . 722) nil ("i" . 723) nil ("l" . 723) nil (718 . 720) (t 21922 26148 0 0) nil (132 . 133) nil ("Q" . 132) (t 21922 26002 0 0) nil (779 . 795) nil (764 . 779) ("bottom" . -764) nil (764 . 770) nil (755 . 764) nil (750 . 752) nil ("x" . 750) nil ("e" . 750) nil ("d" . 750) nil ("n" . 750) nil (743 . 754) nil (734 . 745) nil (735 . 742) nil (734 . 736) nil (" " . -735) nil (726 . 736) nil ("f" . -726) nil ("i" . -727) nil ("n" . -728) nil ("d" . -729) nil (725 . 730) nil (707 . 723) nil (709 . 710) nil (706 . 708) nil (704 . 707) nil (697 . 704) nil (695 . 696) nil (")" . 695) nil ("\"" . 695) ((marker*) . 1) nil ("\"" . 695) ((marker*) . 1) nil ("(" . 695) ((marker*) . 1) ((marker) . -1) nil ("$" . 695) nil (697 . 699) nil (692 . 699) nil (677 . 692) ("bottom" . -677) nil (673 . 683) nil (666 . 673) (t 21922 25931 0 0) nil (718 . 726) nil ("C" . -718) nil ("h" . -719) nil (718 . 720) nil (698 . 718) nil (697 . 699) nil (687 . 698) nil (676 . 686) nil (675 . 677) nil ("'" . -675) nil ("'" . -676) nil (674 . 677) nil (" " . -674) nil (673 . 675) nil (666 . 673) (t 21922 25879 0 0) nil (131 . 137) nil (130 . 132) nil (112 . 132) nil (111 . 112) (t 21922 25778 0 0) nil (605 . 607) nil (584 . 595) (t 21922 25744 0 0) nil (621 . 624) nil ("'" . -621) nil (618 . 622) nil (608 . 618) ("newMe" . -608) nil (608 . 613) nil ("c" . -608) nil ("h" . -609) nil ("a" . -610) nil ("t" . -611) nil (603 . 612) nil (596 . 603) nil (549 . 550) nil (" " . -549) nil (543 . 550) nil (534 . 543) nil (534 . 541) nil (531 . 535) nil (521 . 531) ("newMessa" . -521) nil (525 . 529) nil ("E" . -525) nil (524 . 526) nil ("e" . -524) nil (524 . 525) nil ("M" . -524) nil ("E" . -525) nil ("s" . -526) nil ("s" . -527) nil ("a" . -528) nil ("g" . -529) nil (515 . 530) nil (508 . 515) nil ("." . 534) nil ("s" . 534) nil ("i" . 534) nil ("h" . 534) nil ("t" . 534) nil (488 . 508) nil (468 . 488) nil (462 . 468) ("      " . 461) (461 . 467) (461 . 462) nil (487 . 502) nil (487 . 489) nil (";" . -487) nil (487 . 488) nil (")" . -487) ((marker*) . 1) ((marker) . -1) nil ("'" . -488) nil (483 . 489) nil ("o" . -483) nil ("]" . -484) ((marker*) . 1) ((marker) . -1) nil ("u" . -485) nil ("s" . -486) nil (468 . 487) nil ("c" . -468) nil ("h" . -469) nil (468 . 470) nil (462 . 468) ("      " . 461) (460 . 468) nil (457 . 460) nil (437 . 457) nil (430 . 437) nil (427 . 430) nil (":" . -427) nil (409 . 428) nil ("t" . -409) nil ("n" . -410) nil (406 . 411) nil (399 . 406) (t 21922 25670 0 0) nil ("    " . 187) (187 . 191) (187 . 188) (t 21922 25669 0 0) nil (171 . 186) nil (166 . 171) (t 21922 25620 0 0) nil ("
" . 393) ((marker . 194) . -1) ((marker . 169) . -1) ((marker) . -1) (t 21922 25619 0 0) nil ("
" . -393) nil ("const app = new Vue({
  el: \"#app\",

  components: {
    \"chat\": chat
  }
});
" . 395) ((marker . 194) . -36) ((marker) . -36) ((marker) . -78) 473 (t 21922 25617 0 0) nil (390 . 391) nil ("0" . -390) nil (390 . 391) (t 21922 25612 0 0) nil (143 . 153) nil ("  " . 146) (146 . 148) (146 . 147) nil (nil rear-nonsticky nil 316 . 317) (nil fontified nil 146 . 317) (146 . 317) nil ("  data: {
    chatList: [
      { message: \"aaa\" },
      { message: \"bbb\" },
      { message: \"cccc\" },
      { message: \"dddd\" },
      { message: \"eeeeee\" }
    ]
  },
" . 248) ((marker . 194) . -10) ((marker) . -26) ((marker) . -171) 419 nil ("  props: [\"chatList\"],

" . 147) ((marker) . -24) 171 nil (138 . 145) nil ("template: `" . 138) nil (126 . 134) nil ("V" . -126) nil (126 . 127) nil ("v" . -126) nil (126 . 127) nil ("    <div class=\"right-column\" id=\"chat-area\">
      <div class=\"chat-view\" id=\"chat-view\">
        <ul>
          <li class=\"chat-view__fukidashi\" v-repeat=\"chatList\">{{message}}</li>
        </ul>
      </div>

      <div id=\"send-message-box\">
        <form v-on=\"submit: createMessage\">
          <textarea cols=\"40\" id=\"\" name=\"\" rows=\"5\"></textarea>
          <input name=\"\" type=\"submit\" value=\"submit\"/>
        </form>
      </div>
    </div>`,
" . 142) ((marker) . -453) 595 (t 21922 25309 0 0) nil (697 . 701) (t 21922 25290 0 0) nil (914 . 915) nil (909 . 910) (t 21922 25254 0 0) nil (909 . 919) nil (904 . 909) nil (904 . 907) nil (903 . 905) nil ("[" . -903) nil (891 . 904) nil (889 . 891) ("  " . 888) (887 . 891) nil (886 . 887) (t 21922 25239 0 0) nil ("," . -876) nil (867 . 873) nil ("d" . 867) nil ("d" . 867) nil ("d" . 867) nil ("d" . 867) nil (nil rear-nonsticky nil 875 . 876) (nil fontified nil 849 . 876) (849 . 876) nil (840 . 844) nil (813 . 817) nil (787 . 790) nil (761 . 764) (t 21922 25188 0 0) nil (611 . 612) nil ("l" . 611) nil ("-" . 611) (t 21922 25184 0 0) nil (303 . 304) nil ("l" . 303) nil ("-" . 303) (t 21922 25175 0 0) nil (737 . 738) nil ("l" . 737) nil ("-" . 737) nil (nil rear-nonsticky nil 837 . 838) (nil fontified nil 815 . 838) (815 . 838) nil (nil rear-nonsticky nil 814 . 815) (nil fontified nil 792 . 815) (792 . 815) nil (nil rear-nonsticky nil 791 . 792) (nil fontified nil 769 . 792) (769 . 792) nil (752 . 768) nil (745 . 752) nil (745 . 750) nil (742 . 746) (t 21922 25158 0 0) nil (750 . 751) nil ("e" . -742) nil (733 . 743) nil ("s" . -733) nil (733 . 734) nil (728 . 733) nil (728 . 731) nil (721 . 729) nil (718 . 721) nil (717 . 718) nil (712 . 716) nil (709 . 713) nil ("\"" . -709) nil (" " . -710) nil (707 . 711) nil (704 . 707) nil (706 . 708) nil ("{" . -706) nil (706 . 707) ("  " . -705) (707 . 708) nil (704 . 707) nil (699 . 704) nil ("z" . -699) nil ("v" . -700) nil (687 . 701) nil (685 . 687) nil ("
" . 682) nil ("  " . 682) nil ("," . -681) nil (681 . 682) nil (681 . 684) (t 21922 24986 0 0) nil (654 . 670) nil (655 . 660) nil (648 . 656) nil ("a" . -648) nil ("g" . -649) nil ("e" . -650) nil (639 . 651) nil ("  " . 621) (621 . 623) (621 . 622) nil (633 . 638) nil (633 . 636) nil (623 . 634) nil (611 . 617) nil ("r" . -611) nil ("t" . -612) nil (608 . 613) nil (607 . 609) nil (609 . 612) nil (599 . 609) nil (597 . 599) ("  " . 596) (595 . 599) nil (594 . 595) (t 21922 24906 0 0) nil ("
  " . 593) (t 21922 24886 0 0) nil (585 . 596) nil ("  </div>
  " . 585) (t 21922 24886 0 0) nil ("          <li class=\"chat-view__fukidashi\">message1</li>
          <li class=\"chat-view__fukidashi\">message1</li>
          <li class=\"chat-view__fukidashi\">message1</li>
          <li class=\"chat-view__fukidashi\">message1</li>
          <li class=\"chat-view__fukidashi\">message1</li>
          <li class=\"chat-view__fukidashi\">message1</li>
          <li class=\"chat-view__fukidashi\">message1</li>
" . 327) 726 nil (246 . 252) nil (314 . 315) nil ("     " . -250) (309 . 310) nil (310 . 317) nil (298 . 307) nil ("    " . -963) ("    " . -950) ("    " . -934) ("    " . -878) ("    " . -813) ("    " . -769) ("    " . -735) ("    " . -721) ("    " . -707) ("    " . -650) ("    " . -593) ("    " . -536) ("    " . -479) ("    " . -422) ("    " . -365) ("    " . -308) ("    " . -246) ("    " . -233) ("    " . -188) ("    " . -142) 1043 nil (258 . 267) nil (308 . 309) ("          " . -262) (317 . 318) nil ("1" . 317) nil ("e" . 317) nil ("g" . 317) nil ("a" . 317) nil ("s" . 317) nil ("s" . 317) nil ("e" . 317) nil ("m" . 317) nil (310 . 316) nil ("a" . -310) nil ("t" . -311) nil ("e" . -312) nil (310 . 313) nil ("e" . -310) nil ("s" . -311) nil (304 . 312) (t 21922 24831 0 0) nil (1051 . 1052) nil ("1" . -1051) nil (1051 . 1052) nil ("\"\"\"" . 1051) nil (140 . 141) nil ("\"\"\"" . 140) (t 21922 24754 0 0) nil (1059 . 1060) 1051 nil ("
" . 1051) nil ("  " . 1051) nil (1057 . 1059) nil (141 . 143) nil (1052 . 1054) nil (nil rear-nonsticky nil 1048 . 1049) (nil fontified nil 142 . 1049) (142 . 1049) nil (142 . 144) nil (141 . 142) nil (141 . 142) nil (140 . 142) nil (135 . 140) nil (";" . -135) nil ("a" . -136) nil ("t" . -137) nil ("e" . -138) nil (128 . 139) nil (128 . 129) nil (127 . 128) nil (119 . 129) nil ("c" . -119) nil ("a" . -120) nil ("h" . -121) nil ("r" . -122) nil (113 . 123) nil ("v" . -113) nil ("a" . -114) nil ("r" . -115) nil (" " . -116) nil (113 . 117) (t 21922 24670 0 0) nil ("Vue.component({
  
});" . 113) 135 nil (128 . 131) nil (128 . 129) nil (127 . 129) nil (119 . 129) nil ("n" . -119) nil ("t" . -120) nil ("a" . -121) nil (113 . 122) (t 21922 22878 0 0) nil ("Vue.component('child-vm', {
  props: ['parentMessage'],
  template: '<li>{{ parentMessage }} : {{ msg }}</li>',
  methods: {
    alertHoge: function(event) {
      event.preventDefault();
      alert(this.msg);
    }
  },

  created: function() {
    console.log(\"the child-vm has just been created!\");
  }
});

var parentVM = new Vue({
  el: '#parent-vm',
  data: {
    newMsg: '',
    list: [
      { msg: \"aaaa\" },
      { msg: \"bbb\" },
      { msg: \"cc\" }
    ],
    hoge: 'hogehoge'
  },
  methods: {
    addNewItem: function(event) {
      event.preventDefault();
      event.stopPropagation();
      var newItem = {
        msg: this.newMsg
      };
      this.list.push(newItem);
      this.newMsg = '';
    },

    alertHoge: function(event) {
      event.preventDefault();
      alert(`From parent: ${this.hoge}`);
    }
  }
});
" . 113) 952 (t 21922 6833 0 0) nil (401 . 412) nil ("n" . -401) nil ("e" . -402) nil (397 . 403) nil (377 . 397) nil (376 . 378) nil (";" . -378) nil (364 . 379) nil (359 . 364) nil (359 . 362) nil (355 . 357) nil (347 . 356) nil (338 . 349) nil (336 . 338) ("  " . 335) (334 . 338) nil (333 . 334) (t 21922 6465 0 0) nil (843 . 848) nil (836 . 838) nil (505 . 513) nil (498 . 506) nil (493 . 498) nil (492 . 493) nil (815 . 819) nil ("s" . -815) nil ("h" . -816) nil ("i" . -817) nil ("s" . -818) nil (814 . 819) nil (814 . 815) nil ("'" . -814) nil (814 . 815) nil ("`" . 814) nil ("}" . 814) nil ("g" . 814) nil ("s" . 814) nil ("m" . 814) nil ("." . 814) nil ("s" . 814) nil ("i" . 814) nil ("h" . 814) nil ("t" . 814) nil ("{" . 814) nil ("$" . 814) (t 21922 6428 0 0) nil (" " . -185) nil ("v-on=\"click: alertHoge\"" . 186) 209 (t 21922 6406 0 0) nil (834 . 838) nil ("t" . -834) nil ("n" . -835) nil ("t" . -836) nil (826 . 837) nil ("R" . -826) nil ("O" . -827) nil ("M" . -828) nil (" " . -829) nil (825 . 830) nil (835 . 836) nil (825 . 827) nil (833 . 834) nil (824 . 825) nil (773 . 778) nil (nil rear-nonsticky nil 829 . 830) (nil fontified nil 777 . 830) (777 . 830) nil (776 . 781) nil (773 . 777) nil (753 . 773) nil (749 . 753) ("    " . 748) (747 . 753) nil (746 . 747) (t 21922 6303 0 0) nil (206 . 208) nil ("e" . -206) nil (192 . 207) nil ("a" . -192) nil (192 . 193) nil (185 . 193) (t 21922 6266 0 0) nil (315 . 321) nil ("s" . -315) nil (315 . 316) nil ("s" . -315) nil ("i" . -316) nil ("s" . -317) nil (313 . 318) nil (307 . 315) nil (300 . 307) nil (297 . 300) nil (283 . 297) ("prevent" . -283) nil (283 . 290) nil ("s" . -283) nil ("t" . -284) nil ("o" . -285) nil ("p" . -286) nil (282 . 287) nil ("n" . -282) nil (281 . 283) nil ("e" . -281) nil ("t" . -282) nil ("." . -283) nil (277 . 284) nil (270 . 277) (t 21922 6245 0 0) nil (551 . 552) nil (531 . 551) nil ("m" . -531) nil ("t" . -532) nil (528 . 533) nil (521 . 528) nil (504 . 521) nil ("d" . -504) nil (498 . 505) nil (491 . 498) nil (262 . 267) nil ("v" . -262) nil ("e" . -263) nil ("n" . -264) nil ("t" . -265) nil (262 . 266) nil (265 . 270) nil (262 . 266) nil (242 . 262) nil (237 . 242) nil (237 . 240) nil (227 . 238) nil (224 . 227) nil (223 . 224) (t 21922 6133 0 0) nil (539 . 545) nil (533 . 539) ("newMs" . -533) nil (533 . 538) nil ("m" . -533) nil (528 . 534) nil (521 . 528) nil (520 . 521) nil (512 . 519) nil ("n" . -511) nil ("e" . -512) nil ("w" . -513) nil ("I" . -514) nil ("t" . -515) nil ("e" . -516) nil (511 . 517) nil (470 . 481) nil ("'" . -470) nil ("'" . -471) nil (465 . 472) nil (473 . 474) nil (456 . 465) nil (456 . 463) nil (441 . 457) nil (434 . 441) nil (441 . 457) nil (434 . 441) nil (434 . 439) nil (418 . 435) nil ("i" . -418) nil ("n" . -419) nil ("c" . -420) nil (405 . 421) nil (400 . 405) nil (400 . 403) nil (390 . 401) nil (387 . 390) nil (386 . 387) (t 21922 6042 0 0) nil ("," . -376) nil (371 . 373) nil ("a" . 371) nil ("a" . 371) nil ("a" . 371) nil ("a" . 371) nil (349 . 352) nil ("a" . 349) nil ("a" . 349) nil ("a" . 349) nil ("a" . 349) nil (nil rear-nonsticky nil 380 . 381) (nil fontified nil 358 . 381) (358 . 381) nil (nil rear-nonsticky nil 357 . 358) (nil fontified nil 335 . 358) (335 . 358) nil (333 . 334) nil (326 . 330) nil (319 . 328) nil (318 . 320) nil (311 . 318) nil (311 . 316) (t 21922 6018 0 0) nil (188 . 203) nil (206 . 207) nil ("?" . -206) nil (202 . 207) nil (186 . 193) nil (182 . 195) nil (171 . 183) (t 21922 5976 0 0) nil (152 . 165) nil (151 . 153) nil (153 . 156) nil (143 . 153) nil ("[" . -143) nil ("r" . -144) nil ("p" . -145) nil ("[" . -146) nil (143 . 147) nil (140 . 143) nil (140 . 141) nil (137 . 143) nil (128 . 136) nil (126 . 129) nil ("s" . -126) nil (117 . 127) nil ("o" . -117) nil ("m" . -118) nil ("p" . -119) nil ("o" . -120) nil (113 . 121) nil (111 . 113) nil (177 . 183) nil ("t" . -177) nil ("g" . -178) nil (172 . 179) nil ("m" . -172) nil ("e" . -173) nil ("w" . -174) nil ("<" . -175) nil (168 . 176) nil ("    " . 168) (168 . 172) (168 . 169) (t 21922 5829 0 0) nil (188 . 189) 168 nil (172 . 180) nil (167 . 172) nil (167 . 170) nil (160 . 168) nil (157 . 160) nil (156 . 157) nil (152 . 155) nil ("=" . -152) nil ("v" . -153) nil ("m" . -154) nil (145 . 155) nil (140 . 146) nil (137 . 140) nil (139 . 141) ("  " . -138) (140 . 141) nil ("{" . -140) nil ("}" . -141) nil (140 . 142) nil (137 . 140) nil ("]" . -137) nil (126 . 138) nil (" " . -126) nil (124 . 127) nil ("M" . -124) nil (113 . 125) (t 21922 5673 0 0) nil ("/* TEST `<template>` */
// const listVM = new Vue({
//   el: '#list-template',
//   data: {
//     list: [
//       { msg: 'aaa' },
//       { msg: 'bbb' },
//       { msg: 'ccc' }
//     ]
//   }
// });

" . 113) 318 (t 21922 5672 0 0) nil ("
" . 113) (t 21922 5671 0 0) nil ("/* TEST dialog */
// var dialog = new Vue({
//   el: '#dialog',
//   data: {
//     isActive: false
//   }
// });

// const vm = new Vue({
//   el: '#demo',
//   data: {
//     message: ''
//   },
//   methods: {
//     toggleDialog: function(event) {
//       event.preventDefault();
//       dialog.isActive = !dialog.isActive;
//     }
//   }
// });

" . 113) 467 (t 21922 5665 0 0) nil (672 . 673) (t 21922 5664 0 0) nil (486 . 487) nil ("." . 486) nil (477 . 487) nil (473 . 479) nil ("T" . -473) nil (470 . 474) nil (468 . 472) nil ("*" . -468) nil ("*" . -469) nil (468 . 470) nil (467 . 468) nil ("
" . -467) nil (466 . 468) nil (640 . 643) (633 . 636) (624 . 627) (600 . 603) (575 . 578) (550 . 553) (535 . 538) (522 . 525) (495 . 498) (467 . 470) 617 nil (115 . 128) nil (114 . 117) nil (" " . -114) nil (114 . 115) nil ("/" . -114) nil (" " . -115) nil (113 . 116) nil (112 . 113) nil (441 . 444) (434 . 437) (425 . 428) (380 . 383) (347 . 350) (308 . 311) (292 . 295) (284 . 287) (265 . 268) (252 . 255) (234 . 237) (210 . 213) (202 . 205) (195 . 198) (172 . 175) (159 . 162) (139 . 142) (113 . 116) 394 (t 21922 4055 0 0) nil (544 . 545) 541 nil (543 . 544) nil (":" . -543) nil ("
" . -544) (t 21922 4046 0 0) nil ("
    " . 464) nil ("  " . -540) ("  " . -521) ("  " . -499) ("  " . -477) ("  " . -469) 552 nil ("
" . 552) nil ("   }" . 552) nil (" " . 552) nil ("{" . -464) (t 21922 4001 0 0) nil (566 . 567) 522 nil ("," . -544) nil ("        {},
        {},
" . 546) 570 nil (538 . 541) nil ("a" . 538) nil ("a" . 538) nil ("a" . 538) nil (514 . 517) nil ("a" . 514) nil ("a" . 514) nil ("a" . 515) nil (nil rear-nonsticky nil 545 . 546) (nil fontified nil 522 . 546) (522 . 546) nil (nil rear-nonsticky nil 521 . 522) (nil fontified nil 498 . 522) (498 . 522) nil (490 . 493) nil (483 . 492) nil (nil rear-nonsticky nil 509 . 510) (nil fontified nil 498 . 510) (498 . 510) nil (nil rear-nonsticky nil 497 . 498) (nil fontified nil 486 . 498) (486 . 498) nil (484 . 485) nil ("." . -484) nil ("," . -485) nil (485 . 486) nil (482 . 485) nil (473 . 482) nil (473 . 480) nil (472 . 474) nil (465 . 472) nil (465 . 470) nil (458 . 466) nil (453 . 458) nil (453 . 456) nil (446 . 454) nil (443 . 446) nil (442 . 443) nil (436 . 441) nil ("l" . -436) nil (427 . 437) nil (422 . 428) nil (419 . 422) nil (421 . 423) ("  " . -420) (422 . 423) nil (419 . 422) nil (412 . 419) nil (" " . -412) nil (410 . 413) nil ("V" . -410) nil ("u" . -411) nil ("e" . -412) nil (";" . -413) nil (406 . 414) nil ("m" . -406) nil (406 . 407) nil ("i" . -406) nil ("e" . -407) nil ("w" . -408) nil (401 . 409) nil ("=" . -401) nil (" " . -402) nil (395 . 403) nil (394 . 395) (t 21920 29190 0 0) nil (362 . 363) nil (377 . 378) nil (369 . 377) ("isAc" . -369) nil (364 . 373) nil (344 . 364) nil (337 . 344) nil (334 . 337) nil (314 . 334) nil (307 . 314) nil (300 . 304) nil ("e" . -300) nil ("n" . -301) nil (299 . 302) nil (302 . 307) nil ("p" . -302) nil (302 . 303) nil (297 . 303) nil (277 . 297) nil ("i" . -277) nil (276 . 278) nil (271 . 276) nil (271 . 274) nil (261 . 272) nil (258 . 261) nil (257 . 258) (t 21920 29066 0 0) nil (177 . 182) nil ("'" . -177)))
