view: active_products {
  sql_table_name: Product.ActiveProducts ;;

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }

  dimension: class_id {
    type: string
    sql: ${TABLE}.class_id ;;
  }

  dimension: current_price {
    type: number
    sql: ${TABLE}.current_price ;;
    value_format_name: usd
  }

  dimension: current_price_event_type {
    type: string
    sql: ${TABLE}.current_price_event_type ;;
  }

  dimension: department_id {
    type: string
    sql: ${TABLE}.department_id ;;
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

  dimension: genre {
    type: string
    sql: ${TABLE}.genre ;;
  }

  dimension: manufacturer_name {
    type: string
    sql: ${TABLE}.manufacturer_name ;;
  }

  dimension: model_number {
    type: string
    sql: ${TABLE}.model_number ;;
  }

  dimension: release_date {
    type: string
    sql: ${TABLE}.release_date ;;
  }

  dimension: review_count {
    type: number
    sql: ${TABLE}.review_count ;;
  }

  dimension: review_range_max {
    type: number
    sql: ${TABLE}.review_range_max ;;
  }

  dimension: review_range_min {
    type: number
    sql: ${TABLE}.review_range_min ;;
  }

  dimension: review_score {
    type: number
    sql: ${TABLE}.review_score ;;
  }

  dimension: review_top_rated {
    type: yesno
    sql: ${TABLE}.review_top_rated ;;
  }

  dimension: row_num {
    type: number
    sql: ${TABLE}.rowNum ;;
  }

  dimension: sku_id {
    type: string
    sql: ${TABLE}.sku_id ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: startdisplay_date {
    type: string
    sql: ${TABLE}.startdisplay_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subclass_id {
    type: string
    sql: ${TABLE}.subclass_id ;;
  }

  dimension: system_time {
    type: string
    sql: ${TABLE}.system_time ;;
  }

  dimension: typeinfo_type {
    type: string
    sql: ${TABLE}.typeinfo_type ;;
  }

  measure: count {
    type: count
    drill_fields: [manufacturer_name]
  }
}
