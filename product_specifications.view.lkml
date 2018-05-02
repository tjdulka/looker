view: product_specifications {
  sql_table_name: Product.ProductSpecifications ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: skuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.skuid ;;
  }

  dimension: specifications_display_name {
    type: string
    sql: ${TABLE}.specifications_displayName ;;
  }

  dimension: specifications_tags {
    type: string
    sql: ${TABLE}.specifications_tags ;;
  }

  dimension: specifications_values {
    type: string
    sql: ${TABLE}.specifications_values ;;
  }

  measure: count {
    type: count
    drill_fields: [specifications_display_name]
  }
}
