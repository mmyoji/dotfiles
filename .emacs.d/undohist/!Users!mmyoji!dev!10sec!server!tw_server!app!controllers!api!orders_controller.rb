
((digest . "367f7cb7f9f0e1c8c2f9c67b591b60eb") (undo-list nil ("
" . 410) ((marker . 1177) . -1) ((marker . 1177) . -1) ((marker) . -1) nil ("    # @orders = paginated_scope(Order.viewable_by(current_user).created_within(10.days.ago).includes(:product))" . 410) ((marker . 410) . -32) ((marker) . -111) (t 21924 56364 0 0) nil ("    if params[:as] == 'buyer'
      current_user.bought_orders
    else
      current_user.sold_orders
    end
" . 1518) ((marker . 1406) . -72) ((marker . 950) . -111) ((marker . 950) . -111) ((marker . 951) . -103) ((marker . 951) . -103) ((marker . 964) . -72) ((marker . 964) . -72) ((marker . 1019) . -63) ((marker . 1019) . -63) ((marker) . -30) ((marker) . -30) ((marker) . -111) ((marker) . -111) 1629 nil ("current_user" . 1450) ((marker . 1338) . -12) ((marker) . -12) ((marker) . -12) 1462 nil (nil rear-nonsticky nil 1520 . 1521) (nil fontified nil 1462 . 1521) (1462 . 1521) nil (1450 . 1462) ("current" . -1450) nil (1449 . 1457) ("  " . -1445) (1447 . 1451) nil (1440 . 1447) nil (1411 . 1416) nil (1403 . 1409) nil (1403 . 1404) nil (1402 . 1403) nil (1397 . 1401) nil (nil rear-nonsticky nil 1423 . 1424) (nil fontified nil 1393 . 1424) (1393 . 1424) nil (1379 . 1392) ("bou" . -1379) nil ("d" . -1382) nil ("
" . -1383) ((marker . 784) . -1) ((marker . 784) . -1) nil (" " . -1384) nil (" " . -1385) nil (" " . -1386) nil (" " . -1387) nil (" " . -1388) nil (" " . -1389) nil (1383 . 1390) nil (1378 . 1383) nil (1366 . 1378) ("curr" . -1366) nil (1360 . 1370) nil (1356 . 1359) nil ("e" . -1356) nil ("r" . -1357) nil (1354 . 1358) nil (1354 . 1355) nil (1353 . 1354) nil (1348 . 1353) nil (" " . -1348) nil (" " . -1349) nil (" " . -1350) nil (" " . -1351) nil (1343 . 1352) nil (1342 . 1343) nil (1338 . 1342) nil (1331 . 1338) (1332 . 1336) (1331 . 1335) nil (1327 . 1331) nil (1322 . 1327) (t 21924 56283 0 0) nil ("
" . 1426) nil ("      " . 1426) nil (1422 . 1425) nil ("r" . -1422) nil ("e" . -1423) nil ("s" . -1424) nil (1413 . 1425) nil (1401 . 1413) ("current" . -1401) nil (1401 . 1408) nil (1394 . 1401) nil (1390 . 1394) nil (" " . -1390) nil (" " . -1391) nil (1385 . 1392) nil (1374 . 1385) nil ("u" . -1374) nil ("g" . -1375) nil (1371 . 1376) nil (1359 . 1371) ("curre" . -1359) nil (1359 . 1364) nil (1352 . 1359) nil (1346 . 1351) nil (1346 . 1347) nil (1345 . 1346) nil (1341 . 1345) nil (1341 . 1348) nil (1340 . 1341) nil ("}" . -1340) ((marker*) . 1) ((marker) . -1) nil (1340 . 1341) nil (1336 . 1340) nil (1335 . 1336) nil ("a" . -1335) nil ("s" . -1336) nil (1329 . 1337) (1330 . 1334) (1329 . 1333) (" x
" . -1329) (1329 . 1332) ("
" . -1327) (1327 . 1328) 1329 nil (1327 . 1329) nil (1322 . 1327) nil (1316 . 1322) nil ("b" . -1316) nil ("y" . -1317) nil (1307 . 1318) ("viewa" . -1307) nil (1306 . 1312) (1307 . 1309) (1306 . 1310) nil (1303 . 1306) nil (1301 . 1303) ("  " . 1300) (1302 . 1303) nil (1299 . 1302) (t 21924 56230 0 0) nil ("  def sold
    @orders = paginated_scope(current_user.sold_orders.includes(:product))
    render :index
  end

  def bought
    @orders = paginated_scope(current_user.bought_orders.includes(:product))
    render :index
  end

" . 595) ((marker . 784) . -110) ((marker . 784) . -110) ((marker) . -226) 821 nil (577 . 585) (":pro" . -577) nil (577 . 581) nil (577 . 578) nil (576 . 577) nil (556 . 576) nil ("b" . -556) nil ("a" . -557) nil (552 . 558) nil ("c" . -552) nil ("u" . -553) nil ("r" . -554) nil ("r" . -555) nil ("e" . -556) nil ("n" . -557) nil ("t" . -558) nil (552 . 559) nil (552 . 553) nil (551 . 552) nil (536 . 551) ("pagina" . -536) nil ("t" . -542) nil ("a" . -543) nil ("e" . -544) nil ("
    " . 545) nil (545 . 550) nil (539 . 545) nil ("e" . -539) nil (526 . 540) nil (521 . 526) nil (414 . 416) 520 (t 21924 53623 0 0)))
