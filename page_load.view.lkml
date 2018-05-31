explore: page_load {
}

view: page_load {
  sql_table_name: `gcp-com-clickstream-test.clickstream.page_load`
    ;;

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
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

  dimension: loyalty_id {
    type: string
    sql: ${TABLE}.loyalty_id ;;
  }

  dimension: os_family {
    type: string
    sql: ${TABLE}.os_family ;;
  }

  dimension: page_type {
    type: string
    sql: ${TABLE}.page_type ;;
  }

  dimension: party_id {
    type: string
    sql: ${TABLE}.party_id ;;
  }

  dimension: search_phrase_redirected_on {
    type: string
    sql: ${TABLE}.search_phrase_redirected_on ;;
  }

  dimension: search_redirect_phrase {
    type: string
    sql: ${TABLE}.search_redirect_phrase ;;
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
    drill_fields: [category_name]
  }
}
