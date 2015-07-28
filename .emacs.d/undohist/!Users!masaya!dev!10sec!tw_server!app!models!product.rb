
((digest . "1baced6b8505d21cffb048a8bf74d196") (undo-list nil ("  def check_destroyable
    return true if offers.where(status: %w[pending accepted]).empty? && order.nil?
    errors.add(:base, :must_not_have_transactions)
    false
  end

>>>>>>> replace Offer#status manipulate methods to aasm
" . 6932) ((marker . 8141) . -107) ((marker . 8141) . -107) ((marker . 7959) . -231) ((marker . 7959) . -231) ((marker . 7960) . -175) ((marker . 7960) . -175) ((marker . 7997) . -174) ((marker . 7997) . -174) ((marker . 8080) . -168) ((marker . 8080) . -168) ((marker . 8131) . -158) ((marker . 8131) . -158) ((marker . 8147) . -24) ((marker . 8147) . -24) ((marker . 6932) . -175) ((marker . 6932) . -176) ((marker . 6932) . -231) ((marker) . -231) ((marker) . -231) 7163 nil ("<<<<<<< HEAD
=======
" . 6932) ((marker . 6932) . -1) ((marker . 7021) . -21) ((marker . 7021) . -21) ((marker . 6957) . -13) ((marker . 6957) . -13) ((marker) . -21) ((marker) . -21) 6953 nil ("=======
    user.nil? || offers.by_buyer(user).pending.blank?
>>>>>>> replace Offer#status manipulate methods to aasm
" . 6252) ((marker . 6252) . -1) ((marker . 6252) . -62) ((marker . 6252) . -63) ((marker . 6704) . -118) ((marker . 6704) . -118) ((marker . 6639) . -62) ((marker . 6639) . -62) ((marker . 6671) . -8) ((marker . 6671) . -8) ((marker) . -118) ((marker) . -118) 6370 nil ("
" . 6199) ((marker . 7027) . -1) ((marker . 7027) . -1) ((marker) . -1) nil ("<<<<<<< HEAD" . 6199) ((marker . 6199) . -1) ((marker) . -12) (t 21934 11525 0 0) nil (6199 . 7314) ("    user.nil? || user.offers_as_buyer.pending.blank?
  end

  def owned_by? value
    user == value
  end

  def publishable?
    valid? :publishment
  end

  def resolve_friendly_id_conflict candidates # override from FriendlyId::Slugged
    [candidates.first, (Time.now.to_f * 100000).round].compact.join(friendly_id_config.sequence_separator)
  end

  def shipment_cost
    PACKAGE_SIZE_COST_AMOUNT[package_size] if package_size?
  end

  def tag_list_from_description
    return [] unless description
    (description.scan(/^#(\\w+)/) + description.scan(/ #(\\w+)/)).flatten.map(&:downcase).uniq
  end

  def trashable?
    valid? :trash
  end

  def weight_by_package_size
    PACKAGE_SIZE_WEIGHTS[package_size]
  end

  private
" . 6199) ((marker . 6199) . -53) ((marker . 6199) . -732) (t 21934 11491 0 0) nil ("  def check_destroyable
    return true if offers.where(status: %w[pending accepted]).empty? && order.nil?
    errors.add(:base, :must_not_have_transactions)
    false
  end

>>>>>>> replace Offer#status manipulate methods to aasm
" . 6932) ((marker) . -231) ((marker) . -231) ((marker) . -175) ((marker) . -175) ((marker) . -174) ((marker) . -174) ((marker) . -158) ((marker) . -158) ((marker) . -107) ((marker) . -107) ((marker) . -24) ((marker) . -24) ((marker) . -168) ((marker) . -168) ((marker) . -231) 7163 nil ("  " . 6931) (6931 . 6933) (6931 . 6932) nil ("
<<<<<<< HEAD
=======
" . 6931) ((marker) . -22) ((marker) . -22) ((marker) . -14) ((marker) . -14) ((marker) . -22) 6953 nil ("=======
    user.nil? || offers.by_buyer(user).pending.blank?
>>>>>>> replace Offer#status manipulate methods to aasm
" . 6252) ((marker) . -118) 6370 nil ("
" . 6199) ((marker) . -1) ((marker) . -1) nil ("<<<<<<< HEAD" . 6199) (t 21934 11426 0 0)))
