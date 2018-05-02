view: sku_frequency {
  sql_table_name: Product.sku_frequency ;;

  dimension: sku_id {
    type: string
    sql: ${TABLE}.sku_id ;;
  }

  dimension: skucnt {
    type: number
    sql: ${TABLE}.skucnt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
