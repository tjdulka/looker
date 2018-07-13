explore: usa_1910_2013 {}

view: usa_1910_2013 {
  sql_table_name: `fh-bigquery.popular_names.usa_1910_2013`
    ;;

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: population  {
    type: number
    sql: ${TABLE}.number;;
  }

  measure: total_population {
    type: sum
    sql: ${number};;
  }

  measure: count {
    type: count
    drill_fields: [name, gender, state, year, number]
  }

  measure: name_count {
    type: count_distinct
    sql:  ${name} ;;
    drill_fields: [name, population]
  }

}
