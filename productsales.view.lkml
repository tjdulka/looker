explore: productsales{}

view: productsales {
  derived_table: {
    sql: SELECT DISTINCT
  p1.txn_type,
  p1.event_time,
  p1.sku_id,
  p2.brand,
  p2.names.display AS product_name,
  c1.cat_display_name AS category_name,
  p1.line_item_quantity,
  CAST(p1.unit_price AS FLOAT64) as unit_price,
  p1.txn_store_id as store_id
FROM ((`gcp-com-clickstream-prod.transactions.purchase` p1
    LEFT JOIN
      `web-architecture-test.Product.vMagellanProductV2` p2
    ON
      p1.sku_id = p2.sku_id)
  LEFT JOIN
    `gcp-com-clickstream-test.product.category` c1
  ON
    c1.sku_id = p2.sku_id)
WHERE
  p1.event_time >= "2018-01-01 00:00:00"
  AND p1.event_time < CURRENT_TIMESTAMP()
  AND c1.cat_display_name <> "NULL"
  AND c1.cat_display_name <> "Movies & TV Shows"
  AND c1.cat_display_name <> "Music (CDs & Vinyl)"
  AND p1.sku_id IS NOT NULL
  AND p1.line_item_quantity > 0
  AND p1.txn_sale_type_desc = 'sale'
  AND p1.line_item_type = 'sale-line-item'

       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: txn_type {
    type: string
    sql: ${TABLE}.txn_type ;;
  }

  dimension_group: event_time {
    type: time
    sql: ${TABLE}.event_time ;;
  }

  dimension: sku_id {
    type: string
    sql: ${TABLE}.sku_id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

    dimension: unit_price {
      type: string
      sql: ${TABLE}.unit_price ;;
    }
  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }

  dimension: full_product_name {
      type:  string
      sql: concat(${sku_id},"-", ${brand},"-",${product_name}) ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }

  dimension: line_item_quantity {
    type: number
    sql: ${TABLE}.line_item_quantity ;;
  }

  measure: price {
    type:  number
    sql:  SUM(${unit_price}) ;;
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      txn_type,
      event_time_time,
      sku_id,
      brand,
      product_name,
      category_name,
      line_item_quantity,
      unit_price,
      store_id
    ]
  }
}
