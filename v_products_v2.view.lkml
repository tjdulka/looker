view: v_products_v2 {
  sql_table_name: Product.vProductsV2 ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: names {
    hidden: yes
    sql: ${TABLE}.names ;;
  }

  dimension: skuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.skuid ;;
  }

  dimension: specifications {
    hidden: yes
    sql: ${TABLE}.specifications ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: vProductsV2__names {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }
}

view: vProductsV2__specifications {
  dimension: display_name {
    type: string
    sql: ${TABLE}.displayName ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: values {
    type: string
    sql: ${TABLE}.values ;;
  }
}
