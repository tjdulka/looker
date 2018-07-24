explore: demand_sensing {
}

view: demand_sensing {
  sql_table_name: Product.DemandSensing ;;

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

  dimension: is_not_on_pog {
    type: yesno
    sql: ${pog} = 0 ;;
  }

  dimension: is_on_pog {
    type: yesno
    sql: ${pog} = 1 ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;

  }

  dimension: sku {
    type: number
    sql: ${TABLE}.sku ;;
    link: {
      label: "Product Analytics Dashboard"
      url: "https://bestbuy.looker.com/dashboards/2?Product%20SKU={{ value | encode_uri }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: store {
    type: number
#     hidden: yes
    sql: ${TABLE}.store ;;
  }

  measure: total_sales {
    type: sum
    sql: ${sales} ;;
  }

  dimension: users {
    type: number
#     hidden: yes
    sql: ${TABLE}.users ;;
  }

  measure: count_users {
    type: number
    sql: ${users} ;;
  }

  measure: count_sales {
    type: number
    sql: ${sales} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
