view: product {
  sql_table_name: `gcp-com-clickstream-test.dio.product`
    ;;

  dimension: add_to_wish_list_location {
    type: string
    sql: ${TABLE}.add_to_wish_list_location ;;
  }

  dimension: adobe_hit_id {
    type: string
    sql: ${TABLE}.adobe_hit_id ;;
  }

  dimension: adobe_visit_id {
    type: string
    sql: ${TABLE}.adobe_visit_id ;;
  }

  dimension: cart_add_location {
    type: string
    sql: ${TABLE}.cart_add_location ;;
  }

  dimension: cart_add_revenue {
    type: number
    sql: ${TABLE}.cart_add_revenue ;;
  }

  dimension: driver_product {
    type: number
    sql: ${TABLE}.driver_product ;;
  }

  dimension: event_uuid {
    type: string
    sql: ${TABLE}.event_uuid ;;
  }

  dimension: fulfillment_list_type {
    type: string
    sql: ${TABLE}.fulfillment_list_type ;;
  }

  dimension: fulfillment_number_of_days {
    type: string
    sql: ${TABLE}.fulfillment_number_of_days ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: non_new_product_condition {
    type: string
    sql: ${TABLE}.non_new_product_condition ;;
  }

  dimension: pdp_attributes {
    type: string
    sql: ${TABLE}.pdp_attributes ;;
  }

  dimension: product_condition_and_pricing_type {
    type: string
    sql: ${TABLE}.product_condition_and_pricing_type ;;
  }

  dimension: product_price {
    type: number
    sql: ${TABLE}.product_price ;;
  }

  dimension: product_questions_and_answers {
    type: string
    sql: ${TABLE}.product_questions_and_answers ;;
  }

  dimension: product_rating_and_reviews {
    type: string
    sql: ${TABLE}.product_rating_and_reviews ;;
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

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: shipping_level_of_service {
    type: string
    sql: ${TABLE}.shipping_level_of_service ;;
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

  dimension: units {
    type: number
    sql: ${TABLE}.units ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
