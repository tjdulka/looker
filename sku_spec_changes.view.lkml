view: sku_spec_changes {
  derived_table: {
    sql: SELECT
        sku_id,
        DATE(event_time) as event_date,
      --  count(distinct sku_id) as sku_cnt
        count( s.display_name)/count( distinct s.display_name)  as spec_change_count
      FROM
        `web-architecture-test.Product.magellan_product_copy`,
        UNNEST(specifications) AS s
      WHERE
        event_time >= TIMESTAMP("2018-01-01 00:00:00")
        AND event_time < CURRENT_TIMESTAMP()
      --  AND sku_id = "5465502"
      Group by event_date, sku_id
      order by event_date asc
       ;;
  }

  dimension: sku_id {
    type: string
    sql: ${TABLE}.sku_id ;;
  }

  dimension: event_date {
    type: date
    sql: ${TABLE}.event_date ;;
  }

  dimension: spec_change_count{
    type: number
    sql: ${TABLE}.spec_change_count ;;
  }

  set: detail {
    fields: [sku_id, event_date, spec_change_count]
  }
}
