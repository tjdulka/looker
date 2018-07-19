view: v_authentication {
  sql_table_name: ApplicationProfiles.v_Authentication ;;

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: authentication {
    type: string
    sql: ${TABLE}.authentication ;;
  }

  dimension: authentication_answer {
    type: string
    sql: ${TABLE}.authentication_answer ;;
  }

  dimension: authentication_order {
    type: number
    sql: ${TABLE}.authentication_order ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
