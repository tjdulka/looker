view: sku_spec_changes {
  derived_table: {
    datagroup_trigger: tjd_test_1_default_datagroup
    sql: SELECT
        sku_id,
        COUNT(DISTINCT EXTRACT(DATE FROM event_time)) as number_days_with_change,
        MAX(EXTRACT (DATE FROM event_time)) as most_recent_change,
        count(s.display_name)/count( distinct s.display_name)  as spec_change_count
      FROM
        Product.magellan_product_copy,
        UNNEST(specifications) AS s
      WHERE
        event_time >= TIMESTAMP("2018-01-01 00:00:00")
        AND event_time < CURRENT_TIMESTAMP()
      GROUP BY sku_id
 ;;
  }

  dimension: sku_id {
    primary_key: yes
    type: string
    hidden: yes
    sql: ${TABLE}.sku_id ;;
  }

  dimension: number_days_with_change {
    type: number
    sql: ${TABLE}.number_days_with_change ;;
  }

  dimension_group: most_recent_change {
    type: time
    timeframes: [
      date,
      week,
      time,
    ]
    sql: ${TABLE}.most_recent_change ;;
  }

  dimension: days_since_change {
    type: number
    sql: DATE_DIFF(CURRENT_DATE(), ${most_recent_change_date}, day) ;;
  }

  dimension: spec_change_count {
    type: number
#     hidden: yes
    sql: ${TABLE}.spec_change_count ;;
  }

  measure: total_spec_changes {
    type: max
    sql: ${spec_change_count};;
  }

  measure: total_spec_changes_2 {
    type: sum
    sql: ${spec_change_count};;
  }

  set: detail {
    fields: [sku_id, number_days_with_change, most_recent_change_date, spec_change_count]
  }
}



view: sku_spec_changes_date_parameter {
  derived_table: {
    sql: SELECT
        sku_id,
        COUNT(DISTINCT EXTRACT(DATE FROM event_time)) as number_days_with_change,
        MAX(EXTRACT (DATE FROM event_time)) as most_recent_change,
        count(s.display_name)/count( distinct s.display_name)  as spec_change_count
      FROM
        Product.magellan_product_copy,
        UNNEST(specifications) AS s
      WHERE
        {% condition magellan_product_copy.event_date%} magellan_product_copy.event_time {% endcondition %}
      GROUP BY sku_id
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: sku_id {
    type: string
    sql: ${TABLE}.sku_id ;;
  }

  dimension: number_days_with_change {
    type: number
    sql: ${TABLE}.number_days_with_change ;;
  }

  dimension: most_recent_change {
    type: date
    sql: ${TABLE}.most_recent_change ;;
  }

  dimension: spec_change_count {
    type: number
    sql: ${TABLE}.spec_change_count ;;
  }

  set: detail {
    fields: [sku_id, number_days_with_change, most_recent_change, spec_change_count]
  }
}
