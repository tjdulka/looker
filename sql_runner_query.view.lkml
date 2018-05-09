view: sql_runner_query {
  derived_table: {
    sql: SELECT
      --  sku_id,
        DATE(event_time) as event_date,
        count(distinct sku_id) as sku_cnt,
        count( s.display_name) as spec_cnt
      FROM
        `web-architecture-test.Product.magellan_product_copy`,
        UNNEST(specifications) AS s
      WHERE
        event_time >= TIMESTAMP("2018-01-01 00:00:00")
        AND event_time < CURRENT_TIMESTAMP()
      --  AND sku_id = "5465502"
      Group by event_date
      order by event_date asc
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: event_date {
    type: date
    sql: ${TABLE}.event_date ;;
  }

  dimension: sku_cnt {
    type: number
    sql: ${TABLE}.sku_cnt ;;
  }

  dimension: spec_cnt {
    type: number
    sql: ${TABLE}.spec_cnt ;;
  }

  set: detail {
    fields: [event_date, sku_cnt, spec_cnt]
  }
}
