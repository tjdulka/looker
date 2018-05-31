explore: plp_product_click {
}

view: plp_product_click {
  sql_table_name: `gcp-com-clickstream-prod.clickstream.plp_product_click`
    ;;

  dimension: category_hierarchy_browsed_from {
    type: string
    sql: ${TABLE}.category_hierarchy_browsed_from ;;
  }

  dimension: category_id_browsed_from {
    type: string
    sql: ${TABLE}.category_id_browsed_from ;;
  }

  dimension: context_type {
    type: string
    sql: ${TABLE}.context_type ;;
  }

  dimension: device_family {
    type: string
    sql: ${TABLE}.device_family ;;
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

  dimension: is_price_displayed {
    type: yesno
    sql: ${TABLE}.is_price_displayed ;;
  }

  dimension: is_price_matched {
    type: yesno
    sql: ${TABLE}.is_price_matched ;;
  }

  dimension: loyalty_id {
    type: string
    sql: ${TABLE}.loyalty_id ;;
  }

  dimension: navigation_type {
    type: string
    sql: ${TABLE}.navigation_type ;;
  }

  dimension: os_family {
    type: string
    sql: ${TABLE}.os_family ;;
  }

  dimension: page_number {
    type: number
    sql: ${TABLE}.page_number ;;
  }

  dimension: page_size {
    type: number
    sql: ${TABLE}.page_size ;;
  }

  dimension: party_id {
    type: string
    sql: ${TABLE}.party_id ;;
  }

  dimension: sku_category_hierarchy {
    type: string
    sql: ${TABLE}.sku_category_hierarchy ;;
  }

  dimension: sku_category_id {
    type: string
    sql: ${TABLE}.sku_category_id ;;
  }

  dimension: sku_id {
    type: string
    sql: ${TABLE}.sku_id ;;
  }

  dimension: sku_position {
    type: number
    sql: ${TABLE}.sku_position ;;
  }

  dimension: term_searched {
    type: string
    sql: ${TABLE}.term_searched ;;
  }

  dimension: user_agent_family {
    type: string
    sql: ${TABLE}.user_agent_family ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: view_type {
    type: string
    sql: ${TABLE}.view_type ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}.visitor_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
