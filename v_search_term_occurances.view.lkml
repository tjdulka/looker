explore: v_search_term_occurances{
}

view: v_search_term_occurances {
  sql_table_name: Product.v_search_term_occurances ;;

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      hour,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_time ;;
  }

  dimension: term {
    type: string
    sql: ${TABLE}.term ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
