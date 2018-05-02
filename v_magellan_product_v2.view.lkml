view: v_magellan_product_v2 {
  sql_table_name: Product.vMagellanProductV2 ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: carrier_name {
    type: string
    sql: ${TABLE}.carrier_name ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }

  dimension: color {
    hidden: yes
    sql: ${TABLE}.color ;;
  }

  dimension: condition {
    hidden: yes
    sql: ${TABLE}.condition ;;
  }

  dimension: depth {
    type: number
    sql: ${TABLE}.depth ;;
  }

  dimension: descriptions {
    hidden: yes
    sql: ${TABLE}.descriptions ;;
  }

  dimension: features {
    hidden: yes
    sql: ${TABLE}.features ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: included_items {
    type: string
    sql: ${TABLE}.included_items ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.length ;;
  }

  dimension: manufacturer {
    hidden: yes
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: names {
    hidden: yes
    sql: ${TABLE}.names ;;
  }

  dimension: operational_attributes {
    hidden: yes
    sql: ${TABLE}.operational_attributes ;;
  }

  dimension: plan_type {
    type: string
    sql: ${TABLE}.plan_type ;;
  }

  dimension: protection_type {
    type: string
    sql: ${TABLE}.protection_type ;;
  }

  dimension: sku_id {
    type: string
    sql: ${TABLE}.sku_id ;;
  }

  dimension: specifications {
    hidden: yes
    sql: ${TABLE}.specifications ;;
  }

  dimension: term_length {
    type: string
    sql: ${TABLE}.term_length ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.upc ;;
  }

  dimension: warranties {
    hidden: yes
    sql: ${TABLE}.warranties ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.width ;;
  }

  measure: count {
    type: count
    drill_fields: [category_name, carrier_name]
  }
}

view: vMagellanProductV2__operational_attributes {
  dimension: definition {
    type: string
    sql: ${TABLE}.definition ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: raw_name {
    type: string
    sql: ${TABLE}.raw_name ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}.sequence ;;
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

view: vMagellanProductV2__color {
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }
}

view: vMagellanProductV2__descriptions {
  dimension: bullets {
    hidden: yes
    sql: ${TABLE}.bullets ;;
  }

  dimension: long {
    type: string
    sql: ${TABLE}.long ;;
  }

  dimension: short {
    type: string
    sql: ${TABLE}.short ;;
  }

  dimension: short_synopsis {
    type: string
    sql: ${TABLE}.short_synopsis ;;
  }
}

view: vMagellanProductV2__descriptions__bullets {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}.sequence ;;
  }
}

view: vMagellanProductV2__specifications {
  dimension: definition {
    type: string
    sql: ${TABLE}.definition ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: raw_name {
    type: string
    sql: ${TABLE}.raw_name ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}.sequence ;;
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

view: vMagellanProductV2__manufacturer {
  dimension: model_number {
    type: string
    sql: ${TABLE}.model_number ;;
  }
}

view: vMagellanProductV2__features {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}.sequence ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
}

view: vMagellanProductV2__condition {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: sub_display {
    type: string
    sql: ${TABLE}.sub_display ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: vMagellanProductV2__warranties {
  dimension: labor {
    type: string
    sql: ${TABLE}.labor ;;
  }

  dimension: parts {
    type: string
    sql: ${TABLE}.parts ;;
  }
}

view: vMagellanProductV2__names {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: raw_short {
    type: string
    sql: ${TABLE}.raw_short ;;
  }

  dimension: short {
    type: string
    sql: ${TABLE}.short ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
}
