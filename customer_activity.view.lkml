view: customer_activity {
  sql_table_name: `gcp-com-clickstream-test.customer.customer_activity`
    ;;

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;
  }

  dimension: context_type {
    type: string
    sql: ${TABLE}.context_type ;;
  }

  dimension: device_family {
    type: string
    sql: ${TABLE}.device_family ;;
  }

  dimension: edgescape_header {
    hidden: yes
    sql: ${TABLE}.edgescape_header ;;
  }

  dimension: event_context {
    hidden: yes
    sql: ${TABLE}.event_context ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}.event_time ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: event_uuid {
    type: string
    sql: ${TABLE}.event_uuid ;;
  }

  dimension: is_valid_zplank_event {
    type: yesno
    sql: ${TABLE}.is_valid_zplank_event ;;
  }

  dimension: os_family {
    type: string
    sql: ${TABLE}.os_family ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: user_agent_family {
    type: string
    sql: ${TABLE}.user_agent_family ;;
  }

  dimension: user_email_address {
    type: string
    sql: ${TABLE}.user_email_address ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: view_type {
    type: string
    sql: ${TABLE}.view_type ;;
  }

  dimension: zplank {
    type: string
    sql: ${TABLE}.zplank ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: customer_activity__event_context__data {
  dimension: account_recovery_mode {
    type: string
    sql: ${TABLE}.account_recovery_mode ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_trigger {
    type: string
    sql: ${TABLE}.email_trigger ;;
  }

  dimension: is_confirmed_recovery_phone {
    type: yesno
    sql: ${TABLE}.is_confirmed_recovery_phone ;;
  }

  dimension: is_digital_step_up {
    type: yesno
    sql: ${TABLE}.is_digital_step_up ;;
  }

  dimension: overall_certainty {
    type: string
    sql: ${TABLE}.overall_certainty ;;
  }

  dimension: social_provider {
    type: string
    sql: ${TABLE}.social_provider ;;
  }

  dimension: step_up_challenge_reason {
    type: string
    sql: ${TABLE}.step_up_challenge_reason ;;
  }

  dimension: user_activity {
    hidden: yes
    sql: ${TABLE}.user_activity ;;
  }

  dimension: user_mobile_number {
    type: string
    sql: ${TABLE}.user_mobile_number ;;
  }
}

view: customer_activity__event_context__data__user_activity {
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: has_field_received_focus {
    type: yesno
    sql: ${TABLE}.has_field_received_focus ;;
  }

  dimension: has_field_received_input {
    type: yesno
    sql: ${TABLE}.has_field_received_input ;;
  }

  dimension: is_keyboard_used {
    type: yesno
    sql: ${TABLE}.is_keyboard_used ;;
  }

  dimension: is_mouse_moved {
    type: yesno
    sql: ${TABLE}.is_mouse_moved ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }
}

view: customer_activity__event_context {
  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: data {
    hidden: yes
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: customer_activity__edgescape_header {
  dimension: autonomous_system_number {
    type: string
    sql: ${TABLE}.autonomous_system_number ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.region_code ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }
}
