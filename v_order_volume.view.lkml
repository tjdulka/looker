explore: v_order_volume {
  }

view: v_order_volume {
  sql_table_name: Test.v_order_volume ;;

  dimension_group: order_date {
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
    sql: CAST(${TABLE}.order_date_time AS TIMESTAMP) ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}.orders ;;
  }

  dimension: orders_per_min {
    type: number
    sql: ${TABLE}.orders_per_min ;;
  }

  dimension: sales_channel {
    type: string
    sql: ${TABLE}.sales_channel ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
