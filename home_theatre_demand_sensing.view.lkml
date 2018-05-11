view: home_theatre_demand_sensing {
  sql_table_name: Product.HomeTheatreDemandSensing ;;

  dimension: expblsales {
    type: number
    sql: ${TABLE}.expblsales ;;
  }

  dimension: exppdpsales {
    type: number
    sql: ${TABLE}.exppdpsales ;;
  }

  dimension: instockpct {
    type: number
    sql: ${TABLE}.instockpct ;;
  }

  dimension: invadjsales {
    type: number
    sql: ${TABLE}.invadjsales ;;
  }

  dimension: pog {
    type: number
    sql: ${TABLE}.pog ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  dimension: sku {
    type: number
    sql: ${TABLE}.sku ;;
  }

  dimension: store {
    type: number
    sql: ${TABLE}.store ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.users ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
