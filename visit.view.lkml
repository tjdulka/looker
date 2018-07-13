# view: sessions {
#   derived_table: {
#     sql_trigger_value: SELECT CURRENT_DATE ;;
#     sql:
#       SELECT
#       ;;
#   }
#
#
# }
#

explore: visit {}

view: visit {
  sql_table_name: `gcp-com-clickstream-test.dio.visit`
    ;;

  dimension: adobe_visit_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.adobe_visit_id ;;
  }

  dimension: adobe_marketing_cloud_id {
    type: string
    sql: ${TABLE}.adobe_marketing_cloud_id ;;
  }

  dimension: bot {
    type: string
    sql: ${TABLE}.bot ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
  }

  dimension: browser_height {
    type: number
    sql: ${TABLE}.browser_height ;;
  }

  dimension: browser_type {
    type: string
    sql: ${TABLE}.browser_type ;;
  }

  dimension: browser_width {
    type: number
    sql: ${TABLE}.browser_width ;;
  }

  dimension: connection_type {
    type: string
    sql: ${TABLE}.connection_type ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: event_uuid {
    type: string
    sql: ${TABLE}.event_uuid ;;
  }

  dimension: hit_source {
    type: number
    sql: ${TABLE}.hit_source ;;
  }

  dimension: home_page {
    type: number
    sql: ${TABLE}.home_page ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: java_enabled {
    type: yesno
    sql: ${TABLE}.java_enabled ;;
  }

  dimension: javascript_version {
    type: string
    sql: ${TABLE}.javascript_version ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: language_abbrev {
    type: string
    sql: ${TABLE}.language_abbrev ;;
  }

  dimension: mobile_audio_support {
    type: string
    sql: ${TABLE}.mobile_audio_support ;;
  }

  dimension: mobile_color_depth {
    type: number
    sql: ${TABLE}.mobile_color_depth ;;
  }

  dimension: mobile_cookie_support {
    type: yesno
    sql: ${TABLE}.mobile_cookie_support ;;
  }

  dimension: mobile_device_name {
    type: string
    sql: ${TABLE}.mobile_device_name ;;
  }

  dimension: mobile_device_type {
    type: string
    sql: ${TABLE}.mobile_device_type ;;
  }

  dimension: mobile_manufacturer {
    type: string
    sql: ${TABLE}.mobile_manufacturer ;;
  }

  dimension: mobile_screen_height {
    type: number
    sql: ${TABLE}.mobile_screen_height ;;
  }

  dimension: mobile_screen_width {
    type: number
    sql: ${TABLE}.mobile_screen_width ;;
  }

  dimension: mobile_video_support {
    type: string
    sql: ${TABLE}.mobile_video_support ;;
  }

  dimension: monitor_color_depth {
    type: string
    sql: ${TABLE}.monitor_color_depth ;;
  }

  dimension: monitor_height {
    type: number
    sql: ${TABLE}.monitor_height ;;
  }

  dimension: monitor_width {
    type: number
    sql: ${TABLE}.monitor_width ;;
  }

  dimension: operating_system {
    type: string
    sql: ${TABLE}.operating_system ;;
  }

  dimension: plugins {
    type: string
    sql: ${TABLE}.plugins ;;
  }

  dimension: purchase_id {
    type: string
    sql: ${TABLE}.purchase_id ;;
  }

  dimension_group: received_time_gmt {
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
    sql: CAST(${TABLE}.received_time_gmt AS TIMESTAMP) ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension_group: time_gmt {
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
    sql: CAST(${TABLE}.time_gmt AS TIMESTAMP) ;;
  }

  dimension: top_level_domain {
    type: string
    sql: ${TABLE}.top_level_domain ;;
  }

  dimension: truncated {
    type: yesno
    sql: ${TABLE}.truncated ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }

  dimension: uses_persistent_cookie {
    type: number
    sql: ${TABLE}.uses_persistent_cookie ;;
  }

  measure: count {
    type: count
    drill_fields: [adobe_visit_id, mobile_device_name]
  }
}
