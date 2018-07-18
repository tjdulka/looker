view: v_rate_of_change {
  sql_table_name: ApplicationProfiles.v_RateOfChange ;;

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: rate_of_change {
    type: string
    sql: ${TABLE}.rate_of_change ;;
  }

  dimension: rate_of_change_order {
    type: number
    sql: ${TABLE}.rate_of_change_order ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
