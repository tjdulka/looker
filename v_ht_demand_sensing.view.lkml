explore: v_ht_demand_sensing {
}

view: v_ht_demand_sensing {
  sql_table_name: Product.v_ht_demand_sensing ;;

  dimension: not_on_pog_sales {
    type: number
    sql: ${TABLE}.not_on_pog_sales ;;
  }

  dimension: not_on_pog_users {
    type: number
    sql: ${TABLE}.not_on_pog_users ;;
  }

  dimension: on_pog_sales {
    type: number
    sql: ${TABLE}.on_pog_sales ;;
  }

  dimension: on_pog_users {
    type: number
    sql: ${TABLE}.on_pog_users ;;
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

  measure: users_plot {
    type: number
    sql: ${TABLE}.users ;;
  }
  measure: sales_plot {
    type: number
    sql: ${TABLE}.sales ;;
  }
  measure: count {
    type: count
    drill_fields: []
  }
}
