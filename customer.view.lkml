view: customer {
  sql_table_name: `gcp-com-clickstream-test.transactions.customer`
    ;;

  dimension: customer_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: profile_persona {
    type: string
    sql: ${TABLE}.profile_persona ;;
  }

  dimension: profile_propensity {
    type: string
    sql: ${TABLE}.profile_propensity ;;
  }

  dimension: profile_tag {
    type: string
    sql: ${TABLE}.profile_tag ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_id]
  }
}
