view: v_transport_level_security {
  sql_table_name: ApplicationProfiles.v_TransportLevelSecurity ;;

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: transport_level_security {
    type: string
    sql: ${TABLE}.transport_level_security ;;
  }

  dimension: transport_level_security_answer {
    type: string
    sql: ${TABLE}.transport_level_security_answer ;;
  }

  dimension: transport_level_security_order {
    type: number
    sql: ${TABLE}.transport_level_security_order ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
