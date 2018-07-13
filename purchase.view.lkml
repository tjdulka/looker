explore: purchase {
}

view: purchase {
  sql_table_name: `gcp-com-clickstream-test.transactions.purchase`
    ;;

  dimension: context_type {
    type: string
    sql: ${TABLE}.context_type ;;
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
      year,
      week_of_year
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

  dimension: line_item_base_type {
    type: string
    sql: ${TABLE}.line_item_base_type ;;
  }

  dimension: line_item_quantity {
    type: number
    sql: ${TABLE}.line_item_quantity ;;
  }

  dimension: line_item_type {
    type: string
    sql: ${TABLE}.line_item_type ;;
  }

  dimension: loyalty_id {
    type: string
    sql: ${TABLE}.loyalty_id ;;
  }

  dimension: party_id {
    type: string
    sql: ${TABLE}.party_id ;;
  }

  dimension: sku_id {
    type: string
    sql: ${TABLE}.sku_id ;;
  }

  dimension: txn_base_type {
    type: string
    sql: ${TABLE}.txn_base_type ;;
  }

  dimension_group: txn_begin {
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
    sql: ${TABLE}.txn_begin_date ;;
  }

  dimension_group: txn_end {
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
    sql: ${TABLE}.txn_end_date ;;
  }

  dimension: txn_name {
    type: string
    sql: ${TABLE}.txn_name ;;
  }

  dimension: txn_net_total {
    type: number
    sql: CAST(${TABLE}.txn_net_total AS FLOAT64);;
    value_format_name: usd_0
  }

  measure: sum_txn_net {
    type: sum
    sql:  ${txn_net_total} ;;
    value_format_name: usd_0
  }


  dimension: txn_sale_type {
    type: string
    sql: ${TABLE}.txn_sale_type ;;
  }

  dimension: txn_sale_type_desc {
    type: string
    sql: ${TABLE}.txn_sale_type_desc ;;
  }

  dimension: txn_store_id {
    type: string
    sql: ${TABLE}.txn_store_id ;;
  }

  dimension: txn_type {
    type: string
    sql: ${TABLE}.txn_type ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.unit_price ;;
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
    drill_fields: [event_date, user_id, sku_id, unit_price, txn_store_id, txn_name]
  }

}
