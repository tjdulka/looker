view: pdp_save_for_later_click {
  sql_table_name: `gcp-com-clickstream-prod.clickstream.pdp_save_for_later_click`
    ;;

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

  dimension: party_id {
    type: string
    sql: ${TABLE}.party_id ;;
  }

  dimension: sku_id {
    type: string
    sql: ${TABLE}.sku_id ;;
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
