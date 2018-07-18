view: v_encryption_at_rest {
  sql_table_name: ApplicationProfiles.v_EncryptionAtRest ;;

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: encryption_at_rest {
    type: string
    sql: ${TABLE}.encryption_at_rest ;;
  }

  dimension: encryption_at_rest_order {
    type: number
    sql: ${TABLE}.encryption_at_rest_order ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
