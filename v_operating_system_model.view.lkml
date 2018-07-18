view: v_operating_system_model {
  sql_table_name: ApplicationProfiles.v_OperatingSystemModel ;;

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: operating_system_model {
    type: string
    sql: ${TABLE}.operating_system_model ;;
  }

  dimension: operating_system_model_order {
    type: number
    sql: ${TABLE}.operating_system_model_order ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
