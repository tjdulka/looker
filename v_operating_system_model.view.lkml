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

  measure: maturityWeight {
    type:  number
    sql:  CASE WHEN ${operating_system_model} = 'Serverless'  THEN 5
              WHEN ${operating_system_model} = 'Container'  THEN 4
              WHEN ${operating_system_model} = 'On Demand Virtual'  THEN 3
              WHEN ${operating_system_model} = 'Dedicated Virtual'  THEN 2
              WHEN ${operating_system_model} = 'Dedicated Physical'  THEN 1
              ELSE NULL
         END ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
