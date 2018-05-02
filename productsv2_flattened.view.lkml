view: productsv2_flattened {
  sql_table_name: Product.productsv2_flattened ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: cat_display_name {
    type: string
    sql: ${TABLE}.cat_display_name ;;
  }

  dimension: cat_skuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.cat_skuid ;;
  }

  dimension: color_display_name {
    type: string
    sql: ${TABLE}.color_displayName ;;
  }

  dimension: condition_display {
    type: string
    sql: ${TABLE}.condition_display ;;
  }

  dimension: depth {
    type: string
    sql: ${TABLE}.depth ;;
  }

  dimension: descriptions_bullets {
    type: string
    sql: ${TABLE}.descriptions_bullets ;;
  }

  dimension: descriptions_long {
    type: string
    sql: ${TABLE}.descriptions_long ;;
  }

  dimension: descriptions_short {
    type: string
    sql: ${TABLE}.descriptions_short ;;
  }

  dimension: features_description {
    type: string
    sql: ${TABLE}.features_description ;;
  }

  dimension: features_title {
    type: string
    sql: ${TABLE}.features_title ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.height ;;
  }

  dimension: manufacturer_model_number {
    type: string
    sql: ${TABLE}.manufacturer_modelNumber ;;
  }

  dimension: names_display {
    type: string
    sql: ${TABLE}.names_display ;;
  }

  dimension: names_title {
    type: string
    sql: ${TABLE}.names_title ;;
  }

  dimension: specifications_display_name {
    type: string
    sql: ${TABLE}.specifications_displayName ;;
  }

  dimension: specifications_values {
    type: string
    sql: ${TABLE}.specifications_values ;;
  }

  dimension: upc {
    type: number
    sql: ${TABLE}.upc ;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}.weight ;;
  }

  dimension: width {
    type: string
    sql: ${TABLE}.width ;;
  }

  measure: count {
    type: count
    drill_fields: [specifications_display_name, color_display_name, cat_display_name]
  }
}
