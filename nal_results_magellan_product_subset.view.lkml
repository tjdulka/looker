view: nal_results_magellan_product_subset {
  sql_table_name: `gcp-com-clickstream-prod.clickstream.nal_results_magellan_product_subset`
    ;;

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }

  dimension: current_price {
    type: number
    sql: ${TABLE}.current_price ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension: rowkey {
    type: string
    sql: ${TABLE}.rowkey ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
