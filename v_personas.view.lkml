view: v_personas {
  sql_table_name: ApplicationProfiles.v_Personas ;;

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: persona {
    type: string
    sql: ${TABLE}.persona ;;
  }

  dimension: persona_order {
    type: number
    sql: ${TABLE}.persona_order ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
