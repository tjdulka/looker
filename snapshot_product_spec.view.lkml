view: snapshot_product_spec {
  derived_table: {
    sql:  SELECT
      p2.sku_id,
      p2.brand,
      p2.names,
      p2.descriptions,
      p2.category_name,
      p2.category_id,
      p2.manufacturer,
      p2.upc,
      p2.carrier_name,
      p2.plan_type,
      p2.protection_type,
      p2.term_length,
      p2.height,
      p2.width,
      p2.depth,
      p2.length,
      p2.weight,
      p2.color,
      p2.condition,
      p2.included_items,
      p2.warranties,
      p2.specifications,
      p2.operational_attributes,
      p2.features
    FROM (
      SELECT
        p1.*,
        c.cat_display_name AS category_name,
        c.category_id AS category_id,
        MAX(p1.event_time) OVER (PARTITION BY p1.sku_id) AS max_event_time
    FROM
      `web-architecture-test.Product.magellan_product_copy` p1
    LEFT JOIN
      `web-architecture-test.Product.category_copy` c
    ON
      p1.sku_id=c.sku_id
    WHERE
      p1.event_time >= "2018-01-01 00:00:00"
      AND p1.event_time < {% condition event_time %} magellan_product_copy.event_time {% endcondition %}
      AND p1.sku_id IS NOT NULL) p2
      WHERE
    p2.event_time = p2.max_event_time
      ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: user_id {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: lifetime_orders {
    description: "The total number of orders for each user"
    type: number
    sql: ${TABLE}.lifetime_orders ;;
  }

  dimension_group: most_recent_purchase {
    description: "The date when each user last ordered"
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.most_recent_purchase_at ;;
  }

  measure: total_lifetime_orders {
    description: "Use this for counting lifetime orders across many users"
    type: sum
    sql: ${lifetime_orders} ;;
  }
}
