view: order_graph {
  sql_table_name: `gcp-com-clickstream-prod.transactions.order_graph`
    ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: client {
    hidden: yes
    sql: ${TABLE}.client ;;
  }

  dimension: context_type {
    type: string
    sql: ${TABLE}.context_type ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created ;;
  }

  dimension: discount_statuses {
    hidden: yes
    sql: ${TABLE}.discount_statuses ;;
  }

  dimension: discounts {
    hidden: yes
    sql: ${TABLE}.discounts ;;
  }

  dimension: enterprise {
    hidden: yes
    sql: ${TABLE}.enterprise ;;
  }

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_time ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: event_uuid {
    type: string
    sql: ${TABLE}.event_uuid ;;
  }

  dimension: items {
    hidden: yes
    sql: ${TABLE}.items ;;
  }

  dimension: loyalty_id {
    type: string
    sql: ${TABLE}.loyalty_id ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modified ;;
  }

  dimension: notes {
    hidden: yes
    sql: ${TABLE}.notes ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: party_id {
    type: string
    sql: ${TABLE}.party_id ;;
  }

  dimension: payments {
    hidden: yes
    sql: ${TABLE}.payments ;;
  }

  dimension: price {
    hidden: yes
    sql: ${TABLE}.price ;;
  }

  dimension: profile_id {
    type: string
    sql: ${TABLE}.profile_id ;;
  }

  dimension: returns {
    hidden: yes
    sql: ${TABLE}.returns ;;
  }

  dimension: revision {
    type: number
    sql: ${TABLE}.revision ;;
  }

  dimension: selected_customer_level_of_service_group_id {
    type: number
    sql: ${TABLE}.selected_customer_level_of_service_group_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: submitted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.submitted ;;
  }

  dimension: tax_exempt {
    hidden: yes
    sql: ${TABLE}.tax_exempt ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_order_id {
    type: string
    sql: ${TABLE}.user_order_id ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}.visitor_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: order_graph__notes {
  dimension: audit_transaction_id {
    type: string
    sql: ${TABLE}.audit_transaction_id ;;
  }

  dimension: contact_user {
    type: string
    sql: ${TABLE}.contact_user ;;
  }

  dimension: contract_reference {
    type: string
    sql: ${TABLE}.contract_reference ;;
  }

  dimension_group: contract {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.contract_time ;;
  }

  dimension: contract_type {
    type: string
    sql: ${TABLE}.contract_type ;;
  }

  dimension: customer_sat_indicator {
    type: string
    sql: ${TABLE}.customer_sat_indicator ;;
  }

  dimension: is_visible_to_all {
    type: yesno
    sql: ${TABLE}.is_visible_to_all ;;
  }

  dimension: note_text {
    type: string
    sql: ${TABLE}.note_text ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.reason_code ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: transaction_name {
    type: string
    sql: ${TABLE}.transaction_name ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: order_graph__enterprise {
  dimension: customer_service_pin {
    type: string
    sql: ${TABLE}.customer_service_pin ;;
  }

  dimension: customer_status {
    type: string
    sql: ${TABLE}.customer_status ;;
  }

  dimension: enterprise_code {
    type: string
    sql: ${TABLE}.enterprise_code ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension_group: event_triggered {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_triggered_on ;;
  }

  dimension: is_add_credit_card_allowed {
    type: yesno
    sql: ${TABLE}.is_add_credit_card_allowed ;;
  }

  dimension: is_atg_id_association_allowed {
    type: yesno
    sql: ${TABLE}.is_atg_id_association_allowed ;;
  }

  dimension: is_customer_order_complete {
    type: yesno
    sql: ${TABLE}.is_customer_order_complete ;;
  }

  dimension: is_invoice_complete {
    type: yesno
    sql: ${TABLE}.is_invoice_complete ;;
  }

  dimension: is_loyalty_id_association_allowed {
    type: yesno
    sql: ${TABLE}.is_loyalty_id_association_allowed ;;
  }

  dimension: is_modify_bill_to_address_allowed {
    type: yesno
    sql: ${TABLE}.is_modify_bill_to_address_allowed ;;
  }

  dimension: is_order_complete {
    type: yesno
    sql: ${TABLE}.is_order_complete ;;
  }

  dimension: is_reschedule_required {
    type: yesno
    sql: ${TABLE}.is_reschedule_required ;;
  }

  dimension: is_subscription_order {
    type: yesno
    sql: ${TABLE}.is_subscription_order ;;
  }

  dimension: maximum_order_fulfillment_status {
    type: string
    sql: ${TABLE}.maximum_order_fulfillment_status ;;
  }

  dimension: minimum_order_fulfillment_status {
    type: string
    sql: ${TABLE}.minimum_order_fulfillment_status ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}.payment_status ;;
  }

  dimension: sales_source {
    type: string
    sql: ${TABLE}.sales_source ;;
  }

  dimension: user_document_type {
    type: string
    sql: ${TABLE}.user_document_type ;;
  }

  dimension: user_order_header_key {
    type: string
    sql: ${TABLE}.user_order_header_key ;;
  }
}

view: order_graph__payments {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: authorized_amount {
    type: number
    sql: ${TABLE}.authorized_amount ;;
  }

  dimension: credit_card_type {
    type: string
    sql: ${TABLE}.credit_card_type ;;
  }

  dimension: expiration_month {
    type: string
    sql: ${TABLE}.expiration_month ;;
  }

  dimension: expiration_year {
    type: string
    sql: ${TABLE}.expiration_year ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: order_graph__discount_statuses {
  dimension: customer_account_based_order_status {
    type: string
    sql: ${TABLE}.customer_account_based_order_status ;;
  }
}

view: order_graph__discounts {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: order_graph__price {
  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: delivery_total {
    type: number
    sql: ${TABLE}.delivery_total ;;
  }

  dimension: discount_summary {
    hidden: yes
    sql: ${TABLE}.discount_summary ;;
  }

  dimension: discounts_applied {
    hidden: yes
    sql: ${TABLE}.discounts_applied ;;
  }

  dimension: is_shipping_estimate {
    type: yesno
    sql: ${TABLE}.is_shipping_estimate ;;
  }

  dimension: open_amount {
    type: number
    sql: ${TABLE}.open_amount ;;
  }

  dimension: order_total {
    type: number
    sql: ${TABLE}.order_total ;;
  }

  dimension: order_total_amount {
    type: number
    sql: ${TABLE}.order_total_amount ;;
  }

  dimension: order_total_charges {
    type: number
    sql: ${TABLE}.order_total_charges ;;
  }

  dimension: post_tax_impositions {
    hidden: yes
    sql: ${TABLE}.post_tax_impositions ;;
  }

  dimension: pre_tax_impositions {
    hidden: yes
    sql: ${TABLE}.pre_tax_impositions ;;
  }

  dimension: product_total {
    type: number
    sql: ${TABLE}.product_total ;;
  }

  dimension: sales_tax_fees_surcharges {
    type: number
    sql: ${TABLE}.sales_tax_fees_surcharges ;;
  }

  dimension: sales_taxes {
    hidden: yes
    sql: ${TABLE}.sales_taxes ;;
  }

  dimension: shipping_total {
    type: number
    sql: ${TABLE}.shipping_total ;;
  }

  dimension: tax_exempt {
    type: string
    sql: ${TABLE}.tax_exempt ;;
  }

  dimension: tax_status {
    type: string
    sql: ${TABLE}.tax_status ;;
  }

  dimension: total_customer_account_based_offer {
    type: number
    sql: ${TABLE}.total_customer_account_based_offer ;;
  }

  dimension: total_discounts {
    type: number
    sql: ${TABLE}.total_discounts ;;
  }

  dimension: total_down_payment {
    type: number
    sql: ${TABLE}.total_down_payment ;;
  }

  dimension: total_employee_discount {
    type: number
    sql: ${TABLE}.total_employee_discount ;;
  }

  dimension: total_gift_packaging_charges {
    type: number
    sql: ${TABLE}.total_gift_packaging_charges ;;
  }

  dimension: total_gift_packaging_taxes {
    type: number
    sql: ${TABLE}.total_gift_packaging_taxes ;;
  }

  dimension: total_impositions {
    type: number
    sql: ${TABLE}.total_impositions ;;
  }

  dimension: total_loyalty_certificate_discount {
    type: number
    sql: ${TABLE}.total_loyalty_certificate_discount ;;
  }

  dimension: total_non_taxable_fees {
    type: number
    sql: ${TABLE}.total_non_taxable_fees ;;
  }

  dimension: total_post_tax_promo_discount {
    type: number
    sql: ${TABLE}.total_post_tax_promo_discount ;;
  }

  dimension: total_pre_tax_promo_discount {
    type: number
    sql: ${TABLE}.total_pre_tax_promo_discount ;;
  }

  dimension: total_promo_discount {
    type: number
    sql: ${TABLE}.total_promo_discount ;;
  }

  dimension: total_sales_tax {
    type: number
    sql: ${TABLE}.total_sales_tax ;;
  }

  dimension: total_sales_tax_including_impositions {
    type: number
    sql: ${TABLE}.total_sales_tax_including_impositions ;;
  }

  dimension: total_shipping_taxes {
    type: number
    sql: ${TABLE}.total_shipping_taxes ;;
  }

  dimension: total_tax {
    type: number
    sql: ${TABLE}.total_tax ;;
  }

  dimension: total_taxable_fees {
    type: number
    sql: ${TABLE}.total_taxable_fees ;;
  }

  dimension: total_tender_specific_promotion_discount {
    type: number
    sql: ${TABLE}.total_tender_specific_promotion_discount ;;
  }
}

view: order_graph__price__discounts_applied {
  dimension: cop_unit_savings {
    type: number
    sql: ${TABLE}.cop_unit_savings ;;
  }

  dimension: coupon_reference {
    type: string
    sql: ${TABLE}.coupon_reference ;;
  }

  dimension: loyalty_certificate_number {
    type: string
    sql: ${TABLE}.loyalty_certificate_number ;;
  }

  dimension: mint_coupon_id {
    type: string
    sql: ${TABLE}.mint_coupon_id ;;
  }

  dimension: offer_coupon_id {
    type: string
    sql: ${TABLE}.offer_coupon_id ;;
  }

  dimension: offer_external_qualifier {
    type: string
    sql: ${TABLE}.offer_external_qualifier ;;
  }

  dimension: offer_id {
    type: string
    sql: ${TABLE}.offer_id ;;
  }

  dimension: redemption_status {
    type: string
    sql: ${TABLE}.redemption_status ;;
  }

  dimension: savings {
    type: number
    sql: ${TABLE}.savings ;;
  }

  dimension: sub_type {
    type: string
    sql: ${TABLE}.sub_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: order_graph__price__discount_summary {
  dimension: total_customer_account_based_offers {
    type: number
    sql: ${TABLE}.total_customer_account_based_offers ;;
  }

  dimension: total_employee_savings {
    type: number
    sql: ${TABLE}.total_employee_savings ;;
  }

  dimension: total_loyalty_certificates {
    type: number
    sql: ${TABLE}.total_loyalty_certificates ;;
  }

  dimension: total_post_tax_discounts {
    type: number
    sql: ${TABLE}.total_post_tax_discounts ;;
  }

  dimension: total_pre_tax_promo_codes {
    type: number
    sql: ${TABLE}.total_pre_tax_promo_codes ;;
  }

  dimension: total_tender_specific_promotions {
    type: number
    sql: ${TABLE}.total_tender_specific_promotions ;;
  }
}

view: order_graph__price__pre_tax_impositions {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: imposition_name {
    type: string
    sql: ${TABLE}.imposition_name ;;
  }

  dimension: imposition_type {
    type: string
    sql: ${TABLE}.imposition_type ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.percentage ;;
  }
}

view: order_graph__price__post_tax_impositions {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: imposition_name {
    type: string
    sql: ${TABLE}.imposition_name ;;
  }

  dimension: imposition_type {
    type: string
    sql: ${TABLE}.imposition_type ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.percentage ;;
  }
}

view: order_graph__price__sales_taxes {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: is_taxable {
    type: yesno
    sql: ${TABLE}.is_taxable ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: order_graph__client {
  dimension: sales_channel {
    type: string
    sql: ${TABLE}.sales_channel ;;
  }
}

view: order_graph__tax_exempt {
  dimension: tec_code {
    type: string
    sql: ${TABLE}.tec_code ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: order_graph__returns__return_items {
  dimension: carrier_service_code {
    type: string
    sql: ${TABLE}.carrier_service_code ;;
  }

  dimension: customer_return_reason_code {
    type: string
    sql: ${TABLE}.customer_return_reason_code ;;
  }

  dimension: document_type {
    type: string
    sql: ${TABLE}.document_type ;;
  }

  dimension: enterprise_code {
    type: string
    sql: ${TABLE}.enterprise_code ;;
  }

  dimension: entry_type {
    type: string
    sql: ${TABLE}.entry_type ;;
  }

  dimension: has_derived_parent {
    type: yesno
    sql: ${TABLE}.has_derived_parent ;;
  }

  dimension: has_return_exchange_indicator {
    type: yesno
    sql: ${TABLE}.has_return_exchange_indicator ;;
  }

  dimension: invoice_quantity {
    type: number
    sql: ${TABLE}.invoice_quantity ;;
  }

  dimension: is_cancellable {
    type: yesno
    sql: ${TABLE}.is_cancellable ;;
  }

  dimension: is_gift {
    type: yesno
    sql: ${TABLE}.is_gift ;;
  }

  dimension: is_return_by_gift_recipient {
    type: yesno
    sql: ${TABLE}.is_return_by_gift_recipient ;;
  }

  dimension: line_type {
    type: string
    sql: ${TABLE}.line_type ;;
  }

  dimension: maximum_line_status {
    type: string
    sql: ${TABLE}.maximum_line_status ;;
  }

  dimension: maximum_line_status_description {
    type: string
    sql: ${TABLE}.maximum_line_status_description ;;
  }

  dimension: minimum_line_status {
    type: string
    sql: ${TABLE}.minimum_line_status ;;
  }

  dimension: minimum_line_status_description {
    type: string
    sql: ${TABLE}.minimum_line_status_description ;;
  }

  dimension: non_refundable_charges {
    hidden: yes
    sql: ${TABLE}.non_refundable_charges ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_date ;;
  }

  dimension: ordered_quantity {
    type: number
    sql: ${TABLE}.ordered_quantity ;;
  }

  dimension: post_tax_impositions {
    hidden: yes
    sql: ${TABLE}.post_tax_impositions ;;
  }

  dimension: pre_tax_impositions {
    hidden: yes
    sql: ${TABLE}.pre_tax_impositions ;;
  }

  dimension: prime_line_number {
    type: number
    sql: ${TABLE}.prime_line_number ;;
  }

  dimension: refundable_charges {
    hidden: yes
    sql: ${TABLE}.refundable_charges ;;
  }

  dimension_group: return_by {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.return_by_date ;;
  }

  dimension_group: return_initiated {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.return_initiated_date ;;
  }

  dimension: return_product_price {
    type: number
    sql: ${TABLE}.return_product_price ;;
  }

  dimension: return_reason {
    type: string
    sql: ${TABLE}.return_reason ;;
  }

  dimension: ship_node {
    type: string
    sql: ${TABLE}.ship_node ;;
  }

  dimension: sub_line_number {
    type: number
    sql: ${TABLE}.sub_line_number ;;
  }

  dimension: taxes {
    hidden: yes
    sql: ${TABLE}.taxes ;;
  }

  dimension: total_down_payment_amount {
    type: number
    sql: ${TABLE}.total_down_payment_amount ;;
  }

  dimension: total_gift_packaging_amount {
    type: number
    sql: ${TABLE}.total_gift_packaging_amount ;;
  }

  dimension: total_non_refundable_charges {
    type: number
    sql: ${TABLE}.total_non_refundable_charges ;;
  }

  dimension: total_refund_amount {
    type: number
    sql: ${TABLE}.total_refund_amount ;;
  }

  dimension: total_refundable_charges {
    type: number
    sql: ${TABLE}.total_refundable_charges ;;
  }

  dimension: total_return_non_taxable_fees {
    type: number
    sql: ${TABLE}.total_return_non_taxable_fees ;;
  }

  dimension: total_return_sales_taxes {
    type: number
    sql: ${TABLE}.total_return_sales_taxes ;;
  }

  dimension: total_return_taxable_fees {
    type: number
    sql: ${TABLE}.total_return_taxable_fees ;;
  }

  dimension: total_return_taxes {
    type: number
    sql: ${TABLE}.total_return_taxes ;;
  }

  dimension: total_shipping_price {
    type: number
    sql: ${TABLE}.total_shipping_price ;;
  }

  dimension: total_tax_price {
    type: number
    sql: ${TABLE}.total_tax_price ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
  }

  dimension: tracking_url {
    type: string
    sql: ${TABLE}.tracking_url ;;
  }
}

view: order_graph__returns__return_items__refundable_charges {
  dimension: charge_amount {
    type: number
    sql: ${TABLE}.charge_amount ;;
  }

  dimension: charge_category {
    type: string
    sql: ${TABLE}.charge_category ;;
  }

  dimension: charge_name {
    type: string
    sql: ${TABLE}.charge_name ;;
  }

  dimension: charge_per_line {
    type: number
    sql: ${TABLE}.charge_per_line ;;
  }

  dimension: charge_per_unit {
    type: number
    sql: ${TABLE}.charge_per_unit ;;
  }

  dimension: missing_part {
    type: string
    sql: ${TABLE}.missing_part ;;
  }
}

view: order_graph__returns__return_items__taxes {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: is_taxable {
    type: yesno
    sql: ${TABLE}.is_taxable ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: order_graph__returns__return_items__pre_tax_impositions {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: imposition_name {
    type: string
    sql: ${TABLE}.imposition_name ;;
  }

  dimension: imposition_type {
    type: string
    sql: ${TABLE}.imposition_type ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.percentage ;;
  }
}

view: order_graph__returns__return_items__non_refundable_charges {
  dimension: charge_amount {
    type: number
    sql: ${TABLE}.charge_amount ;;
  }

  dimension: charge_category {
    type: string
    sql: ${TABLE}.charge_category ;;
  }

  dimension: charge_name {
    type: string
    sql: ${TABLE}.charge_name ;;
  }

  dimension: charge_per_line {
    type: number
    sql: ${TABLE}.charge_per_line ;;
  }

  dimension: charge_per_unit {
    type: number
    sql: ${TABLE}.charge_per_unit ;;
  }

  dimension: missing_part {
    type: string
    sql: ${TABLE}.missing_part ;;
  }
}

view: order_graph__returns__return_items__post_tax_impositions {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: imposition_name {
    type: string
    sql: ${TABLE}.imposition_name ;;
  }

  dimension: imposition_type {
    type: string
    sql: ${TABLE}.imposition_type ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.percentage ;;
  }
}

view: order_graph__returns {
  dimension: payments {
    hidden: yes
    sql: ${TABLE}.payments ;;
  }

  dimension: return_items {
    hidden: yes
    sql: ${TABLE}.return_items ;;
  }

  dimension: return_order_number {
    type: string
    sql: ${TABLE}.return_order_number ;;
  }
}

view: order_graph__returns__payments {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: authorization_status {
    type: string
    sql: ${TABLE}.authorization_status ;;
  }

  dimension: authorization_status_description {
    type: string
    sql: ${TABLE}.authorization_status_description ;;
  }

  dimension: authorized_amount {
    type: number
    sql: ${TABLE}.authorized_amount ;;
  }

  dimension: charge_sequence {
    type: string
    sql: ${TABLE}.charge_sequence ;;
  }

  dimension: charged_amount {
    type: number
    sql: ${TABLE}.charged_amount ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_suspend_any_more_charges {
    type: yesno
    sql: ${TABLE}.is_suspend_any_more_charges ;;
  }

  dimension: open_amount {
    type: number
    sql: ${TABLE}.open_amount ;;
  }

  dimension: pay_with_points {
    hidden: yes
    sql: ${TABLE}.pay_with_points ;;
  }

  dimension: payment_key {
    type: string
    sql: ${TABLE}.payment_key ;;
  }

  dimension: recurring_charge {
    type: number
    sql: ${TABLE}.recurring_charge ;;
  }

  dimension: refunded_amount {
    type: number
    sql: ${TABLE}.refunded_amount ;;
  }

  dimension: requested_amount {
    type: number
    sql: ${TABLE}.requested_amount ;;
  }

  dimension: total_amount_charged {
    type: number
    sql: ${TABLE}.total_amount_charged ;;
  }

  dimension: total_amount_credited {
    type: number
    sql: ${TABLE}.total_amount_credited ;;
  }

  dimension: total_net_amount {
    type: number
    sql: ${TABLE}.total_net_amount ;;
  }
}

view: order_graph__returns__payments__pay_with_points {
  dimension: applied_points {
    type: string
    sql: ${TABLE}.applied_points ;;
  }

  dimension: applied_points_currency_equivalent {
    type: string
    sql: ${TABLE}.applied_points_currency_equivalent ;;
  }

  dimension: payment_alias {
    type: string
    sql: ${TABLE}.payment_alias ;;
  }

  dimension: provider_type {
    type: string
    sql: ${TABLE}.provider_type ;;
  }

  dimension: reservation_failure_action {
    type: string
    sql: ${TABLE}.reservation_failure_action ;;
  }

  dimension: reservation_response_code {
    type: string
    sql: ${TABLE}.reservation_response_code ;;
  }

  dimension: reservation_status {
    type: string
    sql: ${TABLE}.reservation_status ;;
  }
}

view: order_graph__user {
  dimension: addresses {
    hidden: yes
    sql: ${TABLE}.addresses ;;
  }

  dimension: is_employee {
    type: yesno
    sql: ${TABLE}.is_employee ;;
  }

  dimension: loyalty_account {
    type: string
    sql: ${TABLE}.loyalty_account ;;
  }

  dimension: party_id {
    type: string
    sql: ${TABLE}.party_id ;;
  }

  dimension: profile_id {
    type: string
    sql: ${TABLE}.profile_id ;;
  }

  dimension: tier_code {
    type: string
    sql: ${TABLE}.tier_code ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: order_graph__user__addresses {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: is_overridden {
    type: yesno
    sql: ${TABLE}.is_overridden ;;
  }

  dimension: is_standardized {
    type: yesno
    sql: ${TABLE}.is_standardized ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: order_graph__items {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: associated_items {
    hidden: yes
    sql: ${TABLE}.associated_items ;;
  }

  dimension: bonus_skus_removed_by_customer {
    type: string
    sql: ${TABLE}.bonus_skus_removed_by_customer ;;
  }

  dimension_group: creation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.creation_time ;;
  }

  dimension: enterprise {
    hidden: yes
    sql: ${TABLE}.enterprise ;;
  }

  dimension: fulfillment {
    hidden: yes
    sql: ${TABLE}.fulfillment ;;
  }

  dimension: is_bby_digital_gift_card {
    type: yesno
    sql: ${TABLE}.is_bby_digital_gift_card ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_digital_gift {
    type: yesno
    sql: ${TABLE}.is_digital_gift ;;
  }

  dimension: is_installation_service_purchasable_online {
    type: yesno
    sql: ${TABLE}.is_installation_service_purchasable_online ;;
  }

  dimension: metadata {
    hidden: yes
    sql: ${TABLE}.metadata ;;
  }

  dimension: open_box_condition {
    type: number
    sql: ${TABLE}.open_box_condition ;;
  }

  dimension: price {
    hidden: yes
    sql: ${TABLE}.price ;;
  }

  dimension: price_overrides {
    hidden: yes
    sql: ${TABLE}.price_overrides ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: quantity_limit {
    type: number
    sql: ${TABLE}.quantity_limit ;;
  }

  dimension: register_id {
    type: string
    sql: ${TABLE}.register_id ;;
  }

  dimension: register_transaction_number {
    type: number
    sql: ${TABLE}.register_transaction_number ;;
  }

  dimension: reservation {
    hidden: yes
    sql: ${TABLE}.reservation ;;
  }

  dimension: seller {
    hidden: yes
    sql: ${TABLE}.seller ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: store_number {
    type: string
    sql: ${TABLE}.store_number ;;
  }

  dimension: transaction_business_day {
    type: string
    sql: ${TABLE}.transaction_business_day ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: work_order_number {
    type: string
    sql: ${TABLE}.work_order_number ;;
  }
}

view: order_graph__items__seller {
  dimension: sales_source {
    type: string
    sql: ${TABLE}.sales_source ;;
  }

  dimension: seller_name {
    type: string
    sql: ${TABLE}.seller_name ;;
  }
}

view: order_graph__items__metadata__catalog__names {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }
}

view: order_graph__items__metadata__catalog__retek_merchandising_system_reference {
  dimension: href {
    type: string
    sql: ${TABLE}.href ;;
  }
}

view: order_graph__items__metadata__catalog {
  dimension_group: dot_com_street {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dot_com_street_date ;;
  }

  dimension: manufacturer {
    hidden: yes
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: names {
    hidden: yes
    sql: ${TABLE}.names ;;
  }

  dimension: retek_merchandising_system_reference {
    hidden: yes
    sql: ${TABLE}.retek_merchandising_system_reference ;;
  }
}

view: order_graph__items__metadata__catalog__manufacturer {
  dimension: model_number {
    type: string
    sql: ${TABLE}.model_number ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: order_graph__items__metadata {
  dimension: catalog {
    hidden: yes
    sql: ${TABLE}.catalog ;;
  }

  dimension: is_pre_order {
    type: yesno
    sql: ${TABLE}.is_pre_order ;;
  }
}

view: order_graph__items__enterprise {
  dimension_group: actual {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.actual_date ;;
  }

  dimension_group: auto_cancel {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.auto_cancel_date ;;
  }

  dimension: cancel_reason_code {
    type: string
    sql: ${TABLE}.cancel_reason_code ;;
  }

  dimension: cancel_reason_description {
    type: string
    sql: ${TABLE}.cancel_reason_description ;;
  }

  dimension: condition_variable {
    type: string
    sql: ${TABLE}.condition_variable ;;
  }

  dimension: customer_status {
    type: string
    sql: ${TABLE}.customer_status ;;
  }

  dimension: customer_status_info {
    hidden: yes
    sql: ${TABLE}.customer_status_info ;;
  }

  dimension: has_gift_wrap {
    type: yesno
    sql: ${TABLE}.has_gift_wrap ;;
  }

  dimension: has_give_back_eligibility {
    type: yesno
    sql: ${TABLE}.has_give_back_eligibility ;;
  }

  dimension: has_shipping_delay {
    type: yesno
    sql: ${TABLE}.has_shipping_delay ;;
  }

  dimension: hold_types {
    hidden: yes
    sql: ${TABLE}.hold_types ;;
  }

  dimension: is_gift {
    type: yesno
    sql: ${TABLE}.is_gift ;;
  }

  dimension: is_monthly_payment {
    type: yesno
    sql: ${TABLE}.is_monthly_payment ;;
  }

  dimension: is_one_time_payment {
    type: yesno
    sql: ${TABLE}.is_one_time_payment ;;
  }

  dimension: is_pre_order {
    type: yesno
    sql: ${TABLE}.is_pre_order ;;
  }

  dimension: is_reshipped {
    type: yesno
    sql: ${TABLE}.is_reshipped ;;
  }

  dimension: is_signature_required {
    type: yesno
    sql: ${TABLE}.is_signature_required ;;
  }

  dimension: is_special_order {
    type: yesno
    sql: ${TABLE}.is_special_order ;;
  }

  dimension: is_subscription {
    type: yesno
    sql: ${TABLE}.is_subscription ;;
  }

  dimension: is_tax_offline {
    type: yesno
    sql: ${TABLE}.is_tax_offline ;;
  }

  dimension: item_condition {
    hidden: yes
    sql: ${TABLE}.item_condition ;;
  }

  dimension: item_group_code {
    type: string
    sql: ${TABLE}.item_group_code ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension: item_modification_flags {
    hidden: yes
    sql: ${TABLE}.item_modification_flags ;;
  }

  dimension: item_statuses {
    hidden: yes
    sql: ${TABLE}.item_statuses ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: line_total {
    type: number
    sql: ${TABLE}.line_total ;;
  }

  dimension: max_item_fulfillment_status {
    type: string
    sql: ${TABLE}.max_item_fulfillment_status ;;
  }

  dimension: min_item_fulfillment_status {
    type: string
    sql: ${TABLE}.min_item_fulfillment_status ;;
  }

  dimension: prime_line_number {
    type: number
    sql: ${TABLE}.prime_line_number ;;
  }

  dimension: promised {
    hidden: yes
    sql: ${TABLE}.promised ;;
  }

  dimension: pseudo_sku {
    type: string
    sql: ${TABLE}.pseudo_sku ;;
  }

  dimension_group: requested_cancel {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.requested_cancel_date ;;
  }

  dimension_group: return {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.return_date ;;
  }

  dimension: serial_numbers {
    type: string
    sql: ${TABLE}.serial_numbers ;;
  }

  dimension: ship_to_id {
    type: string
    sql: ${TABLE}.ship_to_id ;;
  }

  dimension_group: shipment_delay_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.shipment_delay_timestamp ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: sub_line_number {
    type: number
    sql: ${TABLE}.sub_line_number ;;
  }

  dimension: vendor_id {
    type: string
    sql: ${TABLE}.vendor_id ;;
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}.vendor_name ;;
  }
}

view: order_graph__items__enterprise__promised {
  dimension: order_graph_slot {
    hidden: yes
    sql: ${TABLE}.order_graph_slot ;;
  }

  dimension_group: promised {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.promised_date ;;
  }
}

view: order_graph__items__enterprise__promised__order_graph_slot {
  dimension: end {
    type: string
    sql: ${TABLE}.`end` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: order_graph__items__enterprise__item_condition {
  dimension: damage_comments {
    type: string
    sql: ${TABLE}.damage_comments ;;
  }

  dimension: damage_location {
    type: string
    sql: ${TABLE}.damage_location ;;
  }

  dimension: damage_type {
    type: string
    sql: ${TABLE}.damage_type ;;
  }

  dimension: has_missing_parts {
    type: yesno
    sql: ${TABLE}.has_missing_parts ;;
  }

  dimension: license_plate_number {
    type: string
    sql: ${TABLE}.license_plate_number ;;
  }

  dimension: missing_part_1 {
    type: string
    sql: ${TABLE}.missing_part_1 ;;
  }

  dimension: missing_part_2 {
    type: string
    sql: ${TABLE}.missing_part_2 ;;
  }

  dimension: missing_part_3 {
    type: string
    sql: ${TABLE}.missing_part_3 ;;
  }

  dimension: other_missing_part {
    type: string
    sql: ${TABLE}.other_missing_part ;;
  }

  dimension: product_condition {
    type: string
    sql: ${TABLE}.product_condition ;;
  }
}

view: order_graph__items__enterprise__hold_types {
  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: order_graph__items__enterprise__item_modification_flags {
  dimension: is_add_friends_and_family_allowed {
    type: yesno
    sql: ${TABLE}.is_add_friends_and_family_allowed ;;
  }

  dimension: is_add_gsp_allowed {
    type: yesno
    sql: ${TABLE}.is_add_gsp_allowed ;;
  }

  dimension: is_cancel_gift_packaging_allowed {
    type: yesno
    sql: ${TABLE}.is_cancel_gift_packaging_allowed ;;
  }

  dimension: is_cancellable {
    type: yesno
    sql: ${TABLE}.is_cancellable ;;
  }

  dimension: is_delete_friends_and_family_allowed {
    type: yesno
    sql: ${TABLE}.is_delete_friends_and_family_allowed ;;
  }

  dimension: is_modify_home_to_store_allowed {
    type: yesno
    sql: ${TABLE}.is_modify_home_to_store_allowed ;;
  }

  dimension: is_modify_level_of_service_allowed {
    type: yesno
    sql: ${TABLE}.is_modify_level_of_service_allowed ;;
  }

  dimension: is_modify_pickup_location_allowed {
    type: yesno
    sql: ${TABLE}.is_modify_pickup_location_allowed ;;
  }

  dimension: is_modify_ship_to_address_allowed {
    type: yesno
    sql: ${TABLE}.is_modify_ship_to_address_allowed ;;
  }

  dimension: is_modify_store_to_home_allowed {
    type: yesno
    sql: ${TABLE}.is_modify_store_to_home_allowed ;;
  }

  dimension: is_update_friends_and_family_allowed {
    type: yesno
    sql: ${TABLE}.is_update_friends_and_family_allowed ;;
  }
}

view: order_graph__items__enterprise__item_statuses {
  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: status {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.status_date ;;
  }
}

view: order_graph__items__enterprise__customer_status_info {
  dimension: long_description {
    type: string
    sql: ${TABLE}.long_description ;;
  }

  dimension: short_description {
    type: string
    sql: ${TABLE}.short_description ;;
  }
}

view: order_graph__items__price_overrides {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: override_price {
    type: number
    sql: ${TABLE}.override_price ;;
  }

  dimension: reason_text {
    type: string
    sql: ${TABLE}.reason_text ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: order_graph__items__price {
  dimension: cop_unit_price {
    type: number
    sql: ${TABLE}.cop_unit_price ;;
  }

  dimension: item_total {
    type: number
    sql: ${TABLE}.item_total ;;
  }

  dimension: item_total_charges {
    type: number
    sql: ${TABLE}.item_total_charges ;;
  }

  dimension: product_price {
    type: number
    sql: ${TABLE}.product_price ;;
  }

  dimension: total_delivery_price {
    type: number
    sql: ${TABLE}.total_delivery_price ;;
  }

  dimension: total_discounts {
    type: number
    sql: ${TABLE}.total_discounts ;;
  }

  dimension: total_gift_packaging_amount {
    type: number
    sql: ${TABLE}.total_gift_packaging_amount ;;
  }

  dimension: total_impositions {
    type: number
    sql: ${TABLE}.total_impositions ;;
  }

  dimension: total_shipping_price {
    type: number
    sql: ${TABLE}.total_shipping_price ;;
  }

  dimension: total_tax {
    type: number
    sql: ${TABLE}.total_tax ;;
  }

  dimension: total_taxable_fees {
    type: number
    sql: ${TABLE}.total_taxable_fees ;;
  }

  dimension: unit_current_price {
    type: number
    sql: ${TABLE}.unit_current_price ;;
  }

  dimension: unit_regular_price {
    type: number
    sql: ${TABLE}.unit_regular_price ;;
  }
}

view: order_graph__items__reservation {
  dimension: reservation_id {
    type: string
    sql: ${TABLE}.reservation_id ;;
  }

  dimension: seller_lot_id {
    type: string
    sql: ${TABLE}.seller_lot_id ;;
  }
}

view: order_graph__items__associated_items__associated_fullfillment {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: cop_unit_price {
    type: number
    sql: ${TABLE}.cop_unit_price ;;
  }

  dimension: display_date_type {
    type: string
    sql: ${TABLE}.display_date_type ;;
  }

  dimension_group: fulfill {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fulfill_date ;;
  }

  dimension: has_regional_inventory {
    type: yesno
    sql: ${TABLE}.has_regional_inventory ;;
  }

  dimension: is_overridden {
    type: yesno
    sql: ${TABLE}.is_overridden ;;
  }

  dimension_group: received_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.received_date_time ;;
  }

  dimension_group: requested {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.requested_date ;;
  }

  dimension: shipping_sku {
    type: string
    sql: ${TABLE}.shipping_sku ;;
  }
}

view: order_graph__items__fulfillment {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: address_id {
    type: string
    sql: ${TABLE}.address_id ;;
  }

  dimension: cop_unit_price {
    type: number
    sql: ${TABLE}.cop_unit_price ;;
  }

  dimension: display_date_type {
    type: string
    sql: ${TABLE}.display_date_type ;;
  }

  dimension_group: fulfill {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fulfill_date ;;
  }

  dimension: has_gift_receipt {
    type: yesno
    sql: ${TABLE}.has_gift_receipt ;;
  }

  dimension: is_overridden {
    type: yesno
    sql: ${TABLE}.is_overridden ;;
  }

  dimension_group: received_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.received_date_time ;;
  }

  dimension_group: requested {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.requested_date ;;
  }

  dimension: shipping_sku {
    type: string
    sql: ${TABLE}.shipping_sku ;;
  }

  dimension: slot {
    hidden: yes
    sql: ${TABLE}.slot ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: order_graph__items__fulfillment__slot {
  dimension: end {
    type: string
    sql: ${TABLE}.`end` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: order_graph__items__associated_items {
  dimension: associated_fullfillment {
    hidden: yes
    sql: ${TABLE}.associated_fullfillment ;;
  }
}
