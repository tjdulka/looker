explore: v_latest_profiles {}

view: v_latest_profiles {
  sql_table_name: ApplicationProfiles.v_LatestProfiles ;;

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: answer_number {
    type: number
    sql: ${TABLE}.answerNumber ;;
    html: <p align="center">{{ value }}</p> ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension_group: date_profile {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.dateProfile ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension_group: extract_event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.extractEventTime ;;
  }

  dimension: function {
    type: string
    sql: ${TABLE}.function ;;
  }

  dimension: list_item {
    type: string
    sql: ${TABLE}.listItem ;;
  }

  dimension: profiler {
    type: string
    sql: ${TABLE}.profiler ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension: question_number {
    type: number
    sql: ${TABLE}.questionNumber ;;
    html: <p align="center">{{ value }}</p> ;;
  }

  dimension: question_type {
    type: string
    sql: ${TABLE}.questionType ;;
  }

  dimension: section {
    type: string
    sql: ${TABLE}.section ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: countDistinct {
    type: count_distinct
    drill_fields: []
  }

  measure: countProfiles {
    type: number
    sql:  count(distinct ${application})  ;;
  }
measure: countPCI {
  type: number
  sql:  count( ${answer}) WHERE ${list_item} = 'PCI' ;;
}
measure: countPII {
  type: number
  sql:  count( ${answer}) WHERE ${list_item} = 'PII'  ;;
}
}
