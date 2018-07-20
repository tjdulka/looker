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

  measure: maturityWeight {
    type:  number
    sql:  CASE WHEN ${release_methodology} = 'Continuous Integration'  THEN 3
              WHEN ${release_methodology} = 'Continuous Delivery'  THEN 5
              WHEN ${release_methodology} = 'Gated Environment Tiers'  THEN 1
              WHEN ${release_methodology} = 'Other (specify in comments)' THEN 1
              ELSE NULL
         END ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
