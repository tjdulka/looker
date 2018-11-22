explore: v_order_volume{

}

view: v_order_volume {
  sql_table_name: Test.v_order_volume ;;

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

  dimension: order_hour {
    type: number
    sql: ${TABLE}.order_hour ;;
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
