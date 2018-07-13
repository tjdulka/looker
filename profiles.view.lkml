explore: profiles {}

view: profiles {
  sql_table_name: ApplicationProfiles.Profiles ;;

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
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

  dimension: profiler {
    type: string
    sql: ${TABLE}.profiler ;;
  }

  dimension: questions {
    hidden: yes
    sql: ${TABLE}.questions ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: distinctCount {
    type: count_distinct
    drill_fields: []
  }

  measure: countProfiles {
    type: number
    sql:  ${count}/${distinctCount} ;;
  }
}

view: Profiles__questions__answer_list {
  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: list_item {
    type: string
    sql: ${TABLE}.listItem ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }
}

view: Profiles__questions {
  dimension: answer_list {
    hidden: yes
    sql: ${TABLE}.answerList ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: question_type {
    type: string
    sql: ${TABLE}.questionType ;;
  }

  dimension: section {
    type: string
    sql: ${TABLE}.section ;;
  }
}
