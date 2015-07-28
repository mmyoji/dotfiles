
((digest . "e55e9ba872e63e88b36952210fd19888") (undo-list nil ("=======
  def validate_product_status_is_on_sale
    return true if product.on_sale?
    errors.add(:product, :must_be_on_sale)
>>>>>>> replace Offer#status manipulate methods to aasm
" . 4645) ((marker) . -85) ((marker) . -85) ((marker) . -49) ((marker) . -49) ((marker) . -8) ((marker) . -8) ((marker) . -128) ((marker) . -128) ((marker) . -184) ((marker) . -184) ((marker . 4645) . -184) ((marker . 4645) . -1) ((marker . 4645) . -128) ((marker . 4645) . -129) ((marker) . -184) ((marker) . -184) 4829 nil ("
" . 4529) ((marker) . -1) ((marker) . -1) ((marker) . -1) nil ("<<<<<<< HEAD" . 4529) ((marker . 4529) . -1) ((marker) . -12) (t 21934 11571 0 0) nil ("=======
    return unless created_at?
    created_at.days_since(7)
  end

  private

  def create_order
    Order.create_with_charge \\
      buyer: buyer,
      product: product,
      offer: self, # the order price is assigned from offer price using `before_validation` callback
      credit_balance: credit_balance,
      credit_amount_usage: credit_balance ? credit_balance.amount.abs : nil
    CreditBalance.where(credit_acceptable: product.offers).each{ |c| c.update(amount: 0) }
    true
  end


  def assign_task
    product.user.tasks.find_or_create_by! \\
      kind: :offered,
      target: self,
      product: product
  end

  def revert_credit_and_tasks
    credit_balance.update(amount: 0) if credit_balance
    Task.where(target_id: id).close_all
    true
  end

>>>>>>> replace Offer#status manipulate methods to aasm
" . 3309) ((marker) . -104) ((marker) . -104) ((marker) . -85) ((marker) . -85) ((marker) . -84) ((marker) . -84) ((marker . 4645) . -74) ((marker . 4645) . -74) ((marker . 4600) . -73) ((marker . 4600) . -73) ((marker . 4562) . -67) ((marker . 4562) . -67) ((marker) . -38) ((marker) . -38) ((marker) . -8) ((marker) . -8) ((marker . 4322) . -635) ((marker . 4322) . -635) ((marker . 4316) . -636) ((marker . 4316) . -636) ((marker . 4308) . -666) ((marker . 4308) . -666) ((marker . 4236) . -721) ((marker . 4236) . -721) ((marker . 4181) . -761) ((marker . 4181) . -761) ((marker . 4086) . -770) ((marker . 4086) . -770) ((marker . 4034) . -776) ((marker . 4034) . -776) ((marker . 4033) . -777) ((marker . 4033) . -777) ((marker . 4027) . -833) ((marker . 4027) . -833) ((marker) . -135) ((marker) . -135) ((marker) . -155) ((marker) . -155) ((marker . 4796) . -179) ((marker . 4796) . -179) ((marker . 4790) . -280) ((marker . 4790) . -280) ((marker . 4704) . -318) ((marker . 4704) . -318) ((marker . 4680) . -394) ((marker . 4680) . -394) ((marker . 4652) . -485) ((marker . 4652) . -485) ((marker . 4651) . -494) ((marker . 4651) . -494) ((marker) . -500) ((marker) . -500) ((marker . 4529) . -501) ((marker . 4529) . -501) ((marker . 4528) . -502) ((marker . 4528) . -502) ((marker . 4522) . -520) ((marker . 4522) . -520) ((marker . 4514) . -564) ((marker . 4514) . -564) ((marker . 4431) . -586) ((marker . 4431) . -586) ((marker . 4368) . -606) ((marker . 4368) . -606) ((marker . 4323) . -629) ((marker . 4323) . -629) ((marker) . -1) ((marker) . -777) ((marker) . -778) ((marker) . -833) 4142 nil ("
" . 2502) ((marker . 2870) . -1) ((marker . 2870) . -1) nil ("<<<<<<< HEAD" . 2502) ((marker) . -1) (t 21934 11564 0 0) nil (2515 . 2558) nil ("    created_at.days_since(7) if created_at?" . 2515) (t 21934 11564 0 0) nil ("=======
      error do |_e|
        raise(ActiveRecord::RecordInvalid, self)
      end

      transitions \\
        from: :pending, to: :declined,
        guards: [:validate_product_status_is_on_sale],
        after: :revert_credit_and_tasks
    end

    event :payment_decline do
      transitions \\
        from: :pending, to: :declined,
        after: [:revert_credit_and_tasks, :notify_payment_decline]
    end

    event :cancel do
      error do |_e|
        raise(ActiveRecord::RecordInvalid, self)
      end

>>>>>>> replace Offer#status manipulate methods to aasm
" . 1709) ((marker) . -573) ((marker) . -573) ((marker . 4645) . -517) ((marker . 4645) . -517) ((marker . 4600) . -516) ((marker . 4600) . -516) ((marker . 4562) . -506) ((marker . 4562) . -506) ((marker) . -457) ((marker) . -457) ((marker) . -437) ((marker) . -437) ((marker . 3309) . -416) ((marker . 3309) . -416) ((marker . 3308) . -415) ((marker . 3308) . -415) ((marker . 2870) . -407) ((marker . 2870) . -407) ((marker . 2832) . -340) ((marker . 2832) . -340) ((marker . 2946) . -301) ((marker . 2946) . -301) ((marker . 3037) . -281) ((marker . 3037) . -281) ((marker . 3046) . -251) ((marker . 3046) . -251) ((marker . 3052) . -250) ((marker . 3052) . -250) ((marker . 3053) . -242) ((marker . 3053) . -242) ((marker . 3161) . -147) ((marker . 3161) . -147) ((marker . 3167) . -108) ((marker . 3167) . -108) ((marker . 3168) . -88) ((marker . 3168) . -88) ((marker . 3198) . -87) ((marker . 3198) . -87) ((marker . 3253) . -77) ((marker . 3253) . -77) ((marker . 3293) . -28) ((marker . 3293) . -28) ((marker . 3302) . -8) ((marker . 3302) . -8) ((marker . 3071) . -202) ((marker . 3071) . -202) ((marker) . -1) ((marker) . -517) ((marker) . -518) ((marker) . -573) ((marker) . -573) 2282 nil ("<<<<<<< HEAD
" . 1368) ((marker . 3167) . -13) ((marker . 3167) . -13) ((marker) . -1) ((marker) . -13) ((marker) . -13) 1381 nil ("=======
        guards: [:validate_product_status_is_on_sale],
>>>>>>> replace Offer#status manipulate methods to aasm
" . 1308) ((marker . 3977) . -119) ((marker . 3977) . -119) ((marker . 3912) . -63) ((marker . 3912) . -63) ((marker . 3880) . -8) ((marker . 3880) . -8) ((marker) . -61) ((marker) . -62) ((marker) . -119) ((marker) . -119) 1427 nil ("
" . 1261) ((marker . 3761) . -1) ((marker . 3761) . -1) ((marker) . -1) nil ("<<<<<<< HEAD" . 1261) ((marker) . -1) ((marker) . -12) nil ("=======
        raise(ActiveRecord::RecordInvalid, self) unless e.try(:record)
>>>>>>> replace Offer#status manipulate methods to aasm
" . 962) ((marker . 3912) . -135) ((marker . 3912) . -135) ((marker . 3880) . -79) ((marker . 3880) . -79) ((marker . 3760) . -8) ((marker . 3760) . -8) ((marker) . -1) ((marker) . -79) ((marker) . -80) ((marker) . -135) ((marker) . -135) 1097 nil ("<<<<<<< HEAD
" . 924) ((marker . 3161) . -13) ((marker . 3161) . -13) ((marker) . -1) ((marker) . -13) ((marker) . -13) 937 nil ("
" . 707) ((marker . 3071) . -1) ((marker . 3071) . -1) ((marker) . -1) nil (">>>>>>> replace Offer#status manipulate methods to aasm" . 707) ((marker) . -1) ((marker) . -55) nil ("=======
  scope :by_seller,    -> (user) { where(seller_id: user) }
  scope :by_buyer,     -> (user) { where(buyer_id: user) }
  scope :by_product,   -> (product) { where(product_id: product) }
  scope :pended_previous_offers_to, ->(buyer, product) do
    by_buyer(buyer).by_product(product).pending
  end
  scope :declined_previous_offers_to, ->(buyer, product) do
" . 707) ((marker) . -8) ((marker) . -8) ((marker) . -68) ((marker) . -68) ((marker . 3309) . -127) ((marker . 3309) . -127) ((marker . 3308) . -194) ((marker . 3308) . -194) ((marker . 2870) . -252) ((marker . 2870) . -252) ((marker . 2832) . -300) ((marker . 2832) . -300) ((marker . 2946) . -306) ((marker . 2946) . -306) ((marker . 3037) . -366) ((marker . 3037) . -366) ((marker) . -1) ((marker) . -366) ((marker) . -366) ((marker) . -366) 1073 nil ("
" . 407) ((marker . 3071) . -1) ((marker . 3071) . -1) nil ("<<<<<<< HEAD" . 407) ((marker) . -1) (t 21934 11525 0 0) nil (407 . 6988) ("  scope :by_buyer,     -> (user) { where(buyer_id: user) }
  scope :by_product,   -> (product) { where(product_id: product) }
  scope :pended_previous_offers_to, -> (buyer, product) do
    by_buyer(buyer).by_product(product).pending
  end
  scope :declined_previous_offers_to, -> (buyer, product) do
    by_buyer(buyer).by_product(product).declined
  end

  aasm column: :status do
    state :pending, initial: true
    state :accepted
    state :declined
    state :canceled

    event :accept do
      error do |e|
        raise e unless e.try(:record)

        if e.record.errors.added?(:base, :invalid_card)
          payment_decline
        else
          errors.add(:order, e.record.errors.full_messages.join(','))
          raise(ActiveRecord::RecordInvalid, self)
        end
      end

      transitions \\
        from: :pending, to: :accepted,
        guards: [:validate_product_published],
        after: :create_order
    end

    event :decline do
      transitions \\
        from: :pending, to: :declined,
        guards: [:validate_product_published],
        after: :revert_credit_and_tasks
    end

    event :payment_decline do
      transitions \\
        from: :pending, to: :declined,
        after: [:revert_credit_and_tasks, :notify_payment_decline]
    end

    event :cancel do
      transitions from: :pending, to: :canceled, after: :revert_credit_and_tasks
    end
  end

  delegate :shipment_cost, to: :product, allow_nil: true

  validates :status, presence: true
  validates :product, :buyer, :seller, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 100 }
  validate :validate_different_user, :validate_price_less_than_product_price
  with_options on: :create do
    validate :validate_price_greater_than_prior_offer_price
    validate :validate_duplicate_offers
    validate :validate_user_address
  end

  before_create :mark_previous_offer_as_retry
  after_create :assign_task

  class << self
    def pended_previous_offers_exists? buyer, product
      pended_previous_offers_to(buyer, product).exists?
    end
  end

  def deadline
    created_at.days_since(7) if created_at?
  end

  def as_json opts = {}
    OfferResource.new(self).as_json(opts)
  end

  private

  def create_order
    Order.create_with_charge \\
      buyer: buyer,
      product: product,
      offer: self, # the order price is assigned from offer price using `before_validation` callback
      credit_balance: credit_balance,
      credit_amount_usage: credit_balance ? credit_balance.amount.abs : nil
    CreditBalance.where(credit_acceptable: product.offers).each{ |c| c.update(amount: 0) }
    true
  end

  def assign_task
    product.user.tasks.find_or_create_by!(kind: :offered, target: self, product: product)
  end

  def revert_credit_and_tasks
    credit_balance.update(amount: 0) if credit_balance
    Task.where(target_id: id).close_all
    true
  end

  def notify_payment_decline
    create_activity(:payment_decline, recipient: seller, owner: buyer, product: product)
    create_activity(:payment_declined, recipient: buyer, owner: seller, product: product)
    Mailer.delay.offer_declined_message(self)
    true
  end

  def mark_previous_offer_as_retry
    return unless previous_offered = self.class.declined_previous_offers_to(buyer, product).last
    previous_offered.update(retried: true)
  end

  def validate_different_user
    errors.add(:buyer, :must_not_be_same_with_seller) if buyer && seller == buyer
  end

  def validate_duplicate_offers
    if self.class.pended_previous_offers_exists?(buyer, product)
      errors.add(:base, :already_offered)
    end
  end

  def validate_price_greater_than_prior_offer_price
    declined_offer = self.class.declined_previous_offers_to(buyer, product).higher_price.first
    if declined_offer && declined_offer.price >= price
      errors.add(:base, :validate_price_greater_than_prior_offer_price)
    end
  end

  def validate_price_less_than_product_price
    if product.try(:price) && product.price.to_i <= price.to_i
      errors.add(:price, :less_than, count: \"$#{Money.new(product.price, 'USD')}\")
    end
  end

  def validate_product_published
    return true if product.published?
    errors.add(:product, :must_be_published)" . 407) ((marker . 407) . -300) ((marker . 407) . -300) ((marker . 407) . -555) ((marker . 407) . -901) ((marker . 407) . -1302) ((marker . 407) . -2902) ((marker . 407) . -2425) ((marker . 407) . -4121) (t 21934 11473 0 0) nil ("=======
  def validate_product_status_is_on_sale
    return true if product.on_sale?
    errors.add(:product, :must_be_on_sale)
>>>>>>> replace Offer#status manipulate methods to aasm
" . 4645) ((marker) . -184) 4829 nil ("
" . 4529) nil ("<<<<<<< HEAD" . 4529) nil ("=======
    return unless created_at?
    created_at.days_since(7)
  end

  private

  def create_order
    Order.create_with_charge \\
      buyer: buyer,
      product: product,
      offer: self, # the order price is assigned from offer price using `before_validation` callback
      credit_balance: credit_balance,
      credit_amount_usage: credit_balance ? credit_balance.amount.abs : nil
    CreditBalance.where(credit_acceptable: product.offers).each{ |c| c.update(amount: 0) }
    true
  end


  def assign_task
    product.user.tasks.find_or_create_by! \\
      kind: :offered,
      target: self,
      product: product
  end

  def revert_credit_and_tasks
    credit_balance.update(amount: 0) if credit_balance
    Task.where(target_id: id).close_all
    true
  end

>>>>>>> replace Offer#status manipulate methods to aasm
" . 3309) ((marker) . -833) 4142 nil ("
" . 2502) nil ("<<<<<<< HEAD" . 2502) nil ("=======
      error do |_e|
        raise(ActiveRecord::RecordInvalid, self)
      end

      transitions \\
        from: :pending, to: :declined,
        guards: [:validate_product_status_is_on_sale],
        after: :revert_credit_and_tasks
    end

    event :payment_decline do
      transitions \\
        from: :pending, to: :declined,
        after: [:revert_credit_and_tasks, :notify_payment_decline]
    end

    event :cancel do
      error do |_e|
        raise(ActiveRecord::RecordInvalid, self)
      end

>>>>>>> replace Offer#status manipulate methods to aasm
" . 1709) ((marker) . -573) 2282 nil ("
" . 1368) nil ("<<<<<<< HEAD" . 1368) nil ("=======
        guards: [:validate_product_status_is_on_sale],
>>>>>>> replace Offer#status manipulate methods to aasm
" . 1308) ((marker) . -119) 1427 nil ("
" . 1261) nil ("<<<<<<< HEAD" . 1261) nil ("=======
        raise(ActiveRecord::RecordInvalid, self) unless e.try(:record)
>>>>>>> replace Offer#status manipulate methods to aasm
" . 962) ((marker) . -135) 1097 nil ("
" . 924) nil ("<<<<<<< HEAD" . 924) nil ("=======
  scope :by_seller,    -> (user) { where(seller_id: user) }
  scope :by_buyer,     -> (user) { where(buyer_id: user) }
  scope :by_product,   -> (product) { where(product_id: product) }
  scope :pended_previous_offers_to, ->(buyer, product) do
    by_buyer(buyer).by_product(product).pending
  end
  scope :declined_previous_offers_to, ->(buyer, product) do
>>>>>>> replace Offer#status manipulate methods to aasm
" . 707) ((marker) . -422) 1129 nil ("
" . 407) nil ("<<<<<<< HEAD" . 407) (t 21934 11426 0 0)))
