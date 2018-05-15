view: v_flattened_products {
  sql_table_name: Product.vFlattenedProducts ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;

  link: {
      label: "Best Buy Brand Webpage"
      url: "http://www.google.com/search?q=site:bestbuy.com+{{ value | encode_uri }}&btnI"
      icon_url: "http://www.google.com/s2/favicons?domain=www.bestbuy.com"
    }

  link: {
    label: "Brand Website"
    url: "http://www.google.com/search?q={{ value | encode_uri }}&btnI"
    icon_url: "http://www.google.com/s2/favicons?domain=www.{{ value | encode_uri }}.com"
  }

  link: {
    label: "Facebook"
    url: "http://www.google.com/search?q=site:facebook.com+{{ value | encode_uri }}+clothes&btnI"
    icon_url: "https://static.xx.fbcdn.net/rsrc.php/yl/r/H3nktOa7ZMg.ico"
  }


  drill_fields: [cat_display_name, names_display]
  }

  dimension: cat_display_name {
    type: string
    sql: ${TABLE}.cat_display_name ;;
  }

  dimension: names_display {
    type: string
    sql: ${TABLE}.names_display ;;
  }

  dimension: skuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.skuid ;;


  link: {
    label: "Best Buy SKU Page"
    url: "http://www.google.com/search?q=bestbuy.com {{ value | encode_uri }}&btnI"
    icon_url: "http://www.google.com/s2/favicons?domain=www.bestbuy.com"
    }

    link: {
      label: "Product Analytics Dashboard"
      url: "https://bestbuy.looker.com/dashboards/2?Product%20SKU={{ value | encode_uri }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }

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

  measure: specifications_values_count {
    type: count_distinct
    sql: ${specifications_values} ;;
    drill_fields: [cat_display_name, skuid, brand, specifications_tags, specifications_display_name, specifications_values]
    }

  measure: count {
    type: count
    drill_fields: [specifications_display_name, cat_display_name, skuid, brand]
  }
}
