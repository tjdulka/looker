view: category_hierarchies_copy {
  sql_table_name: Product.category_hierarchies_copy ;;

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

  dimension: hierarchy_link_cat_id {
    type: string
    sql: ${TABLE}.hierarchy_link_cat_id ;;
  }

  dimension: hierarchy_link_name {
    type: string
    sql: ${TABLE}.hierarchy_link_name ;;
  }

  dimension: hierarchy_link_rel {
    type: string
    sql: ${TABLE}.hierarchy_link_rel ;;
  }

  dimension: hierarchy_link_seq {
    type: string
    sql: ${TABLE}.hierarchy_link_seq ;;
  }

  measure: count {
    type: count
    drill_fields: [cat_short_name, hierarchy_link_name, cat_display_name]
  }
}
