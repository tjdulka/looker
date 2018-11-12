explore: plp_load {
}
view: plp_load {
  sql_table_name: `gcp-com-clickstream-prod.clickstream.plp_load`
    ;;

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }

  dimension: context_type {
    type: string
    sql: ${TABLE}.context_type ;;
  }

  dimension: destination_zip_code {
    type: zipcode
    sql: ${TABLE}.destination_zip_code ;;
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

  dimension: is_pick_up_today_selected {
    type: yesno
    sql: ${TABLE}.is_pick_up_today_selected ;;
  }

  measure: count_pick_up_today_selected {
    type: count
    filters: {
      field: is_pick_up_today_selected
      value: "yes"
    }
  }

  measure: percent_pick_up_today_selected {
    type: number
    value_format_name: percent_2
    sql: ${count_pick_up_today_selected}/${count} ;;
  }

  measure: count_not_pick_up_today_selected {
    type: count
    filters: {
      field: is_pick_up_today_selected
      value: "no"
    }
  }

  dimension: loyalty_id {
    type: string
    sql: ${TABLE}.loyalty_id ;;
  }

  dimension: maximum_number_of_results_per_page {
    type: number
    sql: ${TABLE}.maximum_number_of_results_per_page ;;
  }

  dimension: os_family {
    type: string
    sql: ${TABLE}.os_family ;;
  }

  dimension: page_number {
    type: number
    sql: ${TABLE}.page_number ;;
  }

  dimension: party_id {
    type: string
    sql: ${TABLE}.party_id ;;
  }

  dimension: physical_source {
    type: string
    sql: ${TABLE}.physical_source ;;
  }

  dimension: physical_zip_code {
    type: zipcode
    sql: ${TABLE}.physical_zip_code ;;
  }

  dimension: shipping_destination_zip_code {
    type: zipcode
    sql: ${TABLE}.shipping_destination_zip_code ;;
  }

  dimension: sku_list {
    type: string
    sql: ${TABLE}.sku_list ;;
  }

  dimension: store_availability_zip_code {
    type: zipcode
    sql: ${TABLE}.store_availability_zip_code ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }

  dimension: store_search_zip_code {
    type: zipcode
    sql: ${TABLE}.store_search_zip_code ;;
  }

  dimension: store_zip_code {
    type: zipcode
    sql: ${TABLE}.store_zip_code ;;
  }

  dimension: term_searched {
    type: string
    sql: ${TABLE}.term_searched ;;
  }

  dimension: total_number_of_results_raw {
    type: number
    hidden: yes
    sql: ${TABLE}.total_number_of_results ;;
  }

  measure: total_number_of_results {
    type: sum
    sql: ${total_number_of_results_raw} ;;
  }

  measure: avg_number_of_results {
    type: average
    sql: ${total_number_of_results_raw} ;;
  }

  dimension: user_agent_family {
    type: string
    sql: ${TABLE}.user_agent_family ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: distinct_users {
    type: count_distinct
    sql: ${user_id} ;;
  }

  dimension: user_location_determined_by {
    type: string
    sql: ${TABLE}.user_location_determined_by ;;
  }

  dimension: user_location_zip_code {
    type: zipcode
    sql: ${TABLE}.user_location_zip_code ;;
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
