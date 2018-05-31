view: notifyme_unsubscription {
  sql_table_name: `gcp-com-clickstream-prod.clickstream.notifyme_unsubscription`
    ;;

  dimension: context_type {
    type: string
    sql: ${TABLE}.context_type ;;
  }

  dimension: email_id {
    type: string
    sql: ${TABLE}.email_id ;;
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

  dimension: party_id {
    type: string
    sql: ${TABLE}.party_id ;;
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.reason_code ;;
  }

  dimension: sku_id {
    type: string
    sql: ${TABLE}.sku_id ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
