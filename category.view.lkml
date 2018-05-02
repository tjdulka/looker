view: category {
  sql_table_name: Product.category ;;

  dimension: cat_display_name {
    type: string
    sql: ${TABLE}.cat_display_name ;;
  }

  dimension: cat_id {
    type: string
    sql: ${TABLE}.cat_id ;;
  }

  dimension: cat_short_name {
    type: string
    sql: ${TABLE}.cat_short_name ;;
  }

  dimension: skuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.skuid ;;
  }

  measure: count {
    type: count
    drill_fields: [cat_short_name, cat_display_name]
  }
}
