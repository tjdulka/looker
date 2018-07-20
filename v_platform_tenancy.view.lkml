view: v_platform_tenancy {
  sql_table_name: ApplicationProfiles.v_PlatformTenancy ;;

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: platform_tenancy {
    type: string
    sql: ${TABLE}.platform_tenancy ;;
  }

  dimension: platform_tenancy_order {
    type: number
    sql: ${TABLE}.platform_tenancy_order ;;
  }

  measure: maturityWeight {
    type:  number
    sql:  CASE WHEN ${platform_tenancy} = 'Single Tenant'  THEN 2
              WHEN ${platform_tenancy} = 'Multi Tenant'  THEN 1
              ELSE 1
         END ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
