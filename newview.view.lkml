view: newview {
  derived_table: {
    sql: SELECT  * FROM `web-architecture-test.Product.HomeTheatreDemandSensing`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: sku {
    type: number
    sql: ${TABLE}.sku ;;
  }

  dimension: store {
    type: number
    sql: ${TABLE}.store ;;
  }

  dimension: pog {
    type: number
    sql: ${TABLE}.pog ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.users ;;
  }

  dimension: expblsales {
    type: number
    sql: ${TABLE}.expblsales ;;
  }

  dimension: exppdpsales {
    type: number
    sql: ${TABLE}.exppdpsales ;;
  }

  dimension: invadjsales {
    type: number
    sql: ${TABLE}.invadjsales ;;
  }

  dimension: instockpct {
    type: number
    sql: ${TABLE}.instockpct ;;
  }

  set: detail {
    fields: [
      sku,
      store,
      pog,
      sales,
      users,
      expblsales,
      exppdpsales,
      invadjsales,
      instockpct
    ]
  }
}
