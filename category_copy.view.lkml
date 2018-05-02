view: category_copy {
  sql_table_name: Product.category_copy ;;

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

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }

  dimension: display_date {
    type: string
    sql: ${TABLE}.display_date ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
  }

  dimension: parent_cat_id {
    type: string
    sql: ${TABLE}.parent_cat_id ;;
  }

  dimension: sku_id {
    type: string
    sql: ${TABLE}.sku_id ;;
  }

  measure: count {
    type: count
    drill_fields: [cat_short_name, cat_display_name]
  }
}
