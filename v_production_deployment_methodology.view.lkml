view: v_production_deployment_methodology {
  sql_table_name: ApplicationProfiles.v_ProductionDeploymentMethodology ;;

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: production_deployment_methodology {
    type: string
    sql: ${TABLE}.production_deployment_methodology ;;
  }

  dimension: production_deployment_methodology_order {
    type: number
    sql: ${TABLE}.production_deployment_methodology_order ;;
  }

  measure: maturityWeight {
    type:  number
    sql:  CASE WHEN ${production_deployment_methodology} like 'Blue%'  THEN 5
              WHEN ${production_deployment_methodology} = 'Rolling Deployment'  THEN 3
              WHEN ${production_deployment_methodology} = 'Planned Downtime'  THEN 1
              ELSE 1
         END ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
