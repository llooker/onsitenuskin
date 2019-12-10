view: top_customer_data {
  sql_table_name: rob.Top_Customer_Data ;;

  dimension: customer {
    group_label: "Customer Dimension"
    type: string
    sql: ${TABLE}.Customer ;;
  }

  dimension: geo_dimension {
    group_label: "Geo Dimension"
    type: string
    sql: ${TABLE}.Geo_Dimension ;;
  }

  dimension: map_dimension {
    map_layer_name: countries
    type: string
    sql: ${TABLE}.Geo_Dimension ;;
  }

  dimension: geo_dimension_index {
    group_label: "Geo Dimension"
    type: string
    sql: ${TABLE}.Geo_Dimension_Index ;;
  }

  dimension: market {
    group_label: "Customer Dimension"
    type: string
    sql: ${TABLE}.Market ;;
  }

  dimension: share_of_total {
    hidden: yes
    type: string
    sql: ${TABLE}.Share_Of_Total ;;
  }

  dimension: ord_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.Sum_Ord_Amount ;;
  }

  measure: sum_ord_amount {
    value_format_name: usd_0
    type: sum
    sql: ${ord_amount} ;;
  }

  dimension: customer_org_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.Customer_Org_Amount ;;
  }

  measure: sum_customer_org_amount {
    value_format_name: usd_0
    type: sum
    sql: ${customer_org_amount} ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}
