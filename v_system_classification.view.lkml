view: v_system_classification {
  sql_table_name: ApplicationProfiles.v_SystemClassification ;;

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: classification {
    type: string
    sql: ${TABLE}.classification ;;
  }

  dimension: classification_order {
    type: number
    sql: ${TABLE}.classification_order ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
