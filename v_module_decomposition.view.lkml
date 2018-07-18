view: v_module_decomposition {
  sql_table_name: ApplicationProfiles.v_ModuleDecomposition ;;

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: module_decomposition {
    type: string
    sql: ${TABLE}.module_decomposition ;;
  }

  dimension: module_decomposition_order {
    type: number
    sql: ${TABLE}.module_decomposition_order ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
