
((digest . "9bd562fa0f11bd4b6bea496c982f7633") (undo-list nil ("
" . 365) ((marker . 1699) . -1) ((marker . 1699) . -1) ((marker) . -1) nil ("  scope :unchecked" . 365) ((marker . 365) . -2) ((marker . 365) . -2) ((marker) . -18) (t 21918 19931 0 0) nil ("
" . 5173) nil ("      f.input :zendesk_checked" . 5173) ((marker . 5154) . -6) (t 21918 19926 0 0) nil (4528 . 4529) nil ("
" . -4528) ((marker . 1632) . -1) ((marker . 1632) . -1) 4520 (t 21918 19926 0 0) nil ("
" . 4520) ((marker . 1517) . -1) ((marker . 1517) . -1) ((marker) . -1) nil ("      row :zendesk_checked" . 4520) ((marker . 4501) . -6) ((marker . 4501) . -6) ((marker) . -26) (t 21918 19924 0 0) nil ("
" . 2595) ((marker) . -1) ((marker) . -1) ((marker) . -1) nil ("    column :zendesk_checked" . 2595) ((marker . 2576) . -4) ((marker) . -27) (t 21918 19917 0 0) nil ("  action_item :zendesk_checked, only: :show do
    product = Product.published.find(params[:id])
    unless product.zendesk_checked?
      link_to('Check Product', zendesk_checked_product_path(product), method: :patch)
    end
  end

" . 1790) ((marker . 1771) . -2) ((marker . 1771) . -101) ((marker . 1771) . -139) ((marker . 1060) . -234) ((marker . 1060) . -234) ((marker . 1061) . -233) ((marker . 1061) . -233) ((marker . 1109) . -227) ((marker . 1109) . -227) ((marker . 1218) . -219) ((marker . 1218) . -219) ((marker . 1282) . -133) ((marker . 1282) . -133) ((marker . 1288) . -97) ((marker . 1288) . -97) ((marker . 1289) . -47) ((marker . 1289) . -47) ((marker) . -234) ((marker) . -234) 2024 (t 21918 19911 0 0) nil ("  member_action :zendesk_checked, method: :patch do
    product = Product.published.find(params[:id])
    if product.update(zendesk_checked: true)
      redirect_to :back, notice: 'Successfully updated.'
    else
      redirect_to :back, alert: 'Could not be updated.'
    end
  end

" . 1536) ((marker . 1517) . -2) ((marker . 1517) . -106) ((marker . 1342) . -52) ((marker . 1342) . -52) ((marker . 1632) . -102) ((marker . 1632) . -102) ((marker . 1610) . -147) ((marker . 1610) . -147) ((marker . 1560) . -204) ((marker . 1560) . -204) ((marker . 827) . -213) ((marker . 827) . -213) ((marker . 835) . -269) ((marker . 835) . -269) ((marker . 841) . -277) ((marker . 841) . -277) ((marker . 842) . -283) ((marker . 842) . -283) ((marker . 895) . -284) ((marker . 895) . -284) ((marker) . -284) ((marker) . -284) 1820 (t 21918 19906 0 0) nil ("  batch_action \"Mark as 'zendesk checked'\" do |selection|
    Product.published.find(selection).each { |product| product.update(zendesk_checked: true) }
    redirect_to :back, notice: \"Marked as 'zendesk checked' successfully\"
  end

" . 1308) ((marker . 1289) . -62) ((marker) . -234) ((marker) . -234) ((marker . 1342) . -233) ((marker . 1342) . -233) ((marker . 1632) . -227) ((marker . 1632) . -227) ((marker . 1610) . -153) ((marker . 1610) . -153) ((marker . 1560) . -58) ((marker . 1560) . -58) ((marker) . -234) ((marker) . -234) 1542 (t 21918 19899 0 0) nil ("
" . 259) ((marker) . -1) ((marker) . -1) ((marker) . -1) nil ("                :zendesk_checked," . 259) ((marker . 259) . -16) ((marker) . -33) (t 21917 56940 0 0) nil ("receipt" . -4823) (t 21915 20498 0 0) (4830 . 4835) 4812 (t 21915 20498 0 0)))
