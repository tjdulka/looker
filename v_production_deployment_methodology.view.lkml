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

  measure: count {
    type: count
    drill_fields: []
  }
}
