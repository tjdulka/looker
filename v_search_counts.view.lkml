explore: v_search_counts {
  }
  view: v_search_counts {
  sql_table_name: Product.v_search_counts ;;

  dimension: disctinct_searches {
    type: number
    sql: ${TABLE}.disctinct_searches ;;
  }

  dimension: total_searches {
    type: number
    sql: ${TABLE}.total_searches ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
