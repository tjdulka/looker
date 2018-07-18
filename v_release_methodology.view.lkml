view: v_release_methodology {
  sql_table_name: ApplicationProfiles.v_ReleaseMethodology ;;

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: release_methodology {
    type: string
    sql: ${TABLE}.release_methodology ;;
  }

  dimension: release_methodology_order {
    type: number
    sql: ${TABLE}.release_methodology_order ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
