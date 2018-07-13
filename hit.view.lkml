explore: hit {
}
view: hit {
  sql_table_name: `gcp-com-clickstream-test.dio.hit`
    ;;

  dimension: adobe_hit_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.adobe_hit_id ;;
  }

  dimension: accessory_lightbox_launch {
    type: number
    sql: ${TABLE}.accessory_lightbox_launch ;;
  }

  dimension: activated_checkout_page {
    type: number
    sql: ${TABLE}.activated_checkout_page ;;
  }

  dimension: add_to_package {
    type: number
    sql: ${TABLE}.add_to_package ;;
  }

  dimension: add_to_wish_list {
    type: number
    sql: ${TABLE}.add_to_wish_list ;;
  }

  dimension: adobe_marketing_cloud_id {
    type: string
    sql: ${TABLE}.adobe_marketing_cloud_id ;;
  }

  dimension: adobe_visit_id {
    type: string
    sql: ${TABLE}.adobe_visit_id ;;
  }

  dimension: apple_pay_impression {
    type: number
    sql: ${TABLE}.apple_pay_impression ;;
  }

  dimension: audience_ids {
    type: string
    sql: ${TABLE}.audience_ids ;;
  }

  dimension: authenticated_state {
    type: string
    sql: ${TABLE}.authenticated_state ;;
  }

  dimension: bv_interaction {
    type: number
    sql: ${TABLE}.bv_interaction ;;
  }

  dimension: cart_add_revenue {
    type: number
    sql: ${TABLE}.cart_add_revenue ;;
  }

  dimension: cart_additions {
    type: number
    sql: ${TABLE}.cart_additions ;;
  }

  dimension: cart_fulfillment_interaction {
    type: number
    sql: ${TABLE}.cart_fulfillment_interaction ;;
  }

  dimension: cart_removals {
    type: number
    sql: ${TABLE}.cart_removals ;;
  }

  dimension: cart_total {
    type: number
    sql: ${TABLE}.cart_total ;;
  }

  dimension: carts {
    type: number
    sql: ${TABLE}.carts ;;
  }

  dimension: carts_views {
    type: number
    sql: ${TABLE}.carts_views ;;
  }

  dimension: checkout_deliver_options_page {
    type: number
    sql: ${TABLE}.checkout_deliver_options_page ;;
  }

  dimension: checkout_payment_page {
    type: number
    sql: ${TABLE}.checkout_payment_page ;;
  }

  dimension: checkout_review_submit_order_page {
    type: number
    sql: ${TABLE}.checkout_review_submit_order_page ;;
  }

  dimension: checkout_shipping_lightbox {
    type: number
    sql: ${TABLE}.checkout_shipping_lightbox ;;
  }

  dimension: checkouts {
    type: number
    sql: ${TABLE}.checkouts ;;
  }

  dimension: click_action {
    type: string
    sql: ${TABLE}.click_action ;;
  }

  dimension: click_past_search_center {
    type: number
    sql: ${TABLE}.click_past_search_center ;;
  }

  dimension: click_through_search_center {
    type: number
    sql: ${TABLE}.click_through_search_center ;;
  }

  dimension: context_id {
    type: string
    sql: ${TABLE}.context_id ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: create_list {
    type: number
    sql: ${TABLE}.create_list ;;
  }

  dimension: current_facet {
    type: string
    sql: ${TABLE}.current_facet ;;
  }

  dimension: deals_buy_click {
    type: number
    sql: ${TABLE}.deals_buy_click ;;
  }

  dimension: deals_product_impression {
    type: number
    sql: ${TABLE}.deals_product_impression ;;
  }

  dimension: deals_quick_look_launch {
    type: number
    sql: ${TABLE}.deals_quick_look_launch ;;
  }

  dimension: ep_string {
    type: string
    sql: ${TABLE}.ep_string ;;
  }

  dimension: error_list {
    type: string
    sql: ${TABLE}.error_list ;;
  }

  dimension: event_uuid {
    type: string
    sql: ${TABLE}.event_uuid ;;
  }

  dimension: experience_platform_interaction {
    type: number
    sql: ${TABLE}.experience_platform_interaction ;;
  }

  dimension: facet_list {
    type: string
    sql: ${TABLE}.facet_list ;;
  }

  dimension: failed_searches {
    type: number
    sql: ${TABLE}.failed_searches ;;
  }

  dimension: fulfillment_options_launch {
    type: number
    sql: ${TABLE}.fulfillment_options_launch ;;
  }

  dimension: header_footer_link {
    type: string
    sql: ${TABLE}.header_footer_link ;;
  }

  dimension: icr_cart_add {
    type: number
    sql: ${TABLE}.icr_cart_add ;;
  }

  dimension: icr_pdp_impression {
    type: number
    sql: ${TABLE}.icr_pdp_impression ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: incentive_offer {
    type: number
    sql: ${TABLE}.incentive_offer ;;
  }

  dimension: interaction_name {
    type: string
    sql: ${TABLE}.interaction_name ;;
  }

  dimension: internal_campaign_click_thru {
    type: number
    sql: ${TABLE}.internal_campaign_click_thru ;;
  }

  dimension: internal_search_autocomplete {
    type: string
    sql: ${TABLE}.internal_search_autocomplete ;;
  }

  dimension: internal_search_context {
    type: string
    sql: ${TABLE}.internal_search_context ;;
  }

  dimension: internal_search_location {
    type: string
    sql: ${TABLE}.internal_search_location ;;
  }

  dimension: internal_search_number_of_results {
    type: string
    sql: ${TABLE}.internal_search_number_of_results ;;
  }

  dimension: internal_search_term {
    type: string
    sql: ${TABLE}.internal_search_term ;;
  }

  dimension: internal_searches {
    type: number
    sql: ${TABLE}.internal_searches ;;
  }

  dimension: interstitial_product_add_to_cart {
    type: number
    sql: ${TABLE}.interstitial_product_add_to_cart ;;
  }

  dimension: is_error_page {
    type: yesno
    sql: ${TABLE}.is_error_page ;;
  }

  dimension: lightbox_cart_add {
    type: number
    sql: ${TABLE}.lightbox_cart_add ;;
  }

  dimension: lightbox_cart_add_plan {
    type: number
    sql: ${TABLE}.lightbox_cart_add_plan ;;
  }

  dimension: lightbox_click_to_pdp {
    type: number
    sql: ${TABLE}.lightbox_click_to_pdp ;;
  }

  dimension: lightbox_product_view {
    type: number
    sql: ${TABLE}.lightbox_product_view ;;
  }

  dimension: login {
    type: number
    sql: ${TABLE}.login ;;
  }

  dimension: map_cart_add {
    type: number
    sql: ${TABLE}.map_cart_add ;;
  }

  dimension: map_pdp_impression {
    type: number
    sql: ${TABLE}.map_pdp_impression ;;
  }

  dimension: media_network {
    type: string
    sql: ${TABLE}.media_network ;;
  }

  dimension: media_network_click {
    type: number
    sql: ${TABLE}.media_network_click ;;
  }

  dimension: member_id_checkout_lightbox {
    type: number
    value_format_name: id
    sql: ${TABLE}.member_id_checkout_lightbox ;;
  }

  dimension: member_id_checkout_sidebar {
    type: number
    value_format_name: id
    sql: ${TABLE}.member_id_checkout_sidebar ;;
  }

  dimension: merchandising_instance {
    type: number
    sql: ${TABLE}.merchandising_instance ;;
  }

  dimension: mobile_device_quick_look {
    type: number
    sql: ${TABLE}.mobile_device_quick_look ;;
  }

  dimension: mobile_eligible {
    type: number
    sql: ${TABLE}.mobile_eligible ;;
  }

  dimension: mobile_ineligible {
    type: number
    sql: ${TABLE}.mobile_ineligible ;;
  }

  dimension: mobile_submit_eligibility {
    type: number
    sql: ${TABLE}.mobile_submit_eligibility ;;
  }

  dimension: mobile_submit_error {
    type: number
    sql: ${TABLE}.mobile_submit_error ;;
  }

  dimension: my_bby_account_create {
    type: number
    sql: ${TABLE}.my_bby_account_create ;;
  }

  dimension: mybby_tier {
    type: number
    sql: ${TABLE}.mybby_tier ;;
  }

  dimension: non_revenue_units {
    type: number
    sql: ${TABLE}.non_revenue_units ;;
  }

  dimension: nps_id {
    type: string
    sql: ${TABLE}.nps_id ;;
  }

  dimension: number_of_items_in_cart {
    type: string
    sql: ${TABLE}.number_of_items_in_cart ;;
  }

  dimension: offer_applied {
    type: number
    sql: ${TABLE}.offer_applied ;;
  }

  dimension: offer_id {
    type: string
    sql: ${TABLE}.offer_id ;;
  }

  dimension: opinion_lab_id {
    type: string
    sql: ${TABLE}.opinion_lab_id ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: out_of_stock {
    type: number
    sql: ${TABLE}.out_of_stock ;;
  }

  dimension: package_total {
    type: number
    sql: ${TABLE}.package_total ;;
  }

  dimension: page_event {
    hidden: yes
    sql: ${TABLE}.page_event ;;
  }

  dimension: page_load_time {
    type: number
    sql: ${TABLE}.page_load_time ;;
  }

  dimension: page_name {
    type: string
    sql: ${TABLE}.page_name ;;
  }

  dimension: page_type_list {
    type: string
    sql: ${TABLE}.page_type_list ;;
  }

  dimension: page_url {
    type: string
    sql: ${TABLE}.page_url ;;
  }

  dimension: party_id {
    type: string
    sql: ${TABLE}.party_id ;;
  }

  dimension: password_reset_success {
    type: number
    sql: ${TABLE}.password_reset_success ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: pdp {
    type: number
    sql: ${TABLE}.pdp ;;
  }

  dimension: pos_variable {
    type: number
    sql: ${TABLE}.pos_variable ;;
  }

  dimension: previous_page {
    type: string
    sql: ${TABLE}.previous_page ;;
  }

  dimension: price_impression {
    type: number
    sql: ${TABLE}.price_impression ;;
  }

  dimension: product_compare {
    type: number
    sql: ${TABLE}.product_compare ;;
  }

  dimension: product_modification {
    type: number
    sql: ${TABLE}.product_modification ;;
  }

  dimension: product_price {
    type: number
    sql: ${TABLE}.product_price ;;
  }

  dimension: product_views {
    type: number
    sql: ${TABLE}.product_views ;;
  }

  dimension: purchase_id {
    type: string
    sql: ${TABLE}.purchase_id ;;
  }

  dimension: qs_variable {
    type: number
    sql: ${TABLE}.qs_variable ;;
  }

  dimension_group: received_time_gmt {
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
    sql: CAST(${TABLE}.received_time_gmt AS TIMESTAMP) ;;
  }

  dimension: ref_loc {
    type: string
    sql: ${TABLE}.ref_loc ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}.referrer ;;
  }

  dimension: report_suite {
    type: string
    sql: ${TABLE}.report_suite ;;
  }

  dimension: review_submission {
    type: number
    sql: ${TABLE}.review_submission ;;
  }

  dimension: save_for_later_add {
    type: number
    sql: ${TABLE}.save_for_later_add ;;
  }

  dimension: save_for_later_remove {
    type: number
    sql: ${TABLE}.save_for_later_remove ;;
  }

  dimension: search_engine {
    type: string
    sql: ${TABLE}.search_engine ;;
  }

  dimension: site_control_breadcrumb_id {
    type: string
    sql: ${TABLE}.site_control_breadcrumb_id ;;
  }

  dimension: site_section {
    type: string
    sql: ${TABLE}.site_section ;;
  }

  dimension: sku_banner_click {
    type: number
    sql: ${TABLE}.sku_banner_click ;;
  }

  dimension: solution_builder_impression {
    type: number
    sql: ${TABLE}.solution_builder_impression ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: task_name {
    type: string
    sql: ${TABLE}.task_name ;;
  }

  dimension: task_start {
    type: number
    sql: ${TABLE}.task_start ;;
  }

  dimension: task_stop {
    type: number
    sql: ${TABLE}.task_stop ;;
  }

  dimension: tealeaf_id {
    type: string
    sql: ${TABLE}.tealeaf_id ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}.template_name ;;
  }

  dimension_group: time_gmt {
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
    sql: CAST(${TABLE}.time_gmt AS TIMESTAMP) ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: user_token {
    type: string
    sql: ${TABLE}.user_token ;;
  }

  dimension: verified_by_visa_lightbox {
    type: number
    sql: ${TABLE}.verified_by_visa_lightbox ;;
  }

  dimension: video_completes {
    type: number
    sql: ${TABLE}.video_completes ;;
  }

  dimension: video_fifty_milestone {
    type: number
    sql: ${TABLE}.video_fifty_milestone ;;
  }

  dimension: video_start {
    type: number
    sql: ${TABLE}.video_start ;;
  }

  dimension: view_type {
    type: string
    sql: ${TABLE}.view_type ;;
  }

  dimension: visitor_token {
    type: string
    sql: ${TABLE}.visitor_token ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [adobe_hit_id, interaction_name, template_name, page_name, task_name]
  }
}

view: hit__page_event {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: link_name {
    type: string
    sql: ${TABLE}.link_name ;;
  }

  dimension: link_url {
    type: string
    sql: ${TABLE}.link_url ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}
