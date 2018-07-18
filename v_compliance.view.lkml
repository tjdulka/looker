view: v_compliance {
  sql_table_name: ApplicationProfiles.v_Compliance ;;

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: compliance {
    type: string
    sql: ${TABLE}.compliance ;;
  }

  dimension: compliance_order {
    type: number
    sql: ${TABLE}.compliance_order ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
