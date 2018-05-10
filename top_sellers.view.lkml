view: top_sellers {
  sql_table_name: Product.top_sellers ;;

  dimension: cat_display_name {
    type: string
    sql: ${TABLE}.cat_display_name ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: reccnt {
    description: "# SKUs sold in this period"
    type: number
    sql: ${TABLE}.reccnt ;;
  }

  dimension: sku_id {
    type: string
    sql: ${TABLE}.sku_id ;;
  }

  measure: count {
    type: count
    drill_fields: [cat_display_name]
  }
}
