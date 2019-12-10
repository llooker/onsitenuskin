view: top_customer_data {
  sql_table_name: rob.Top_Customer_Data ;;

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
  }

  dimension: customer_org_amount {
    type: number
    sql: ${TABLE}.Customer_Org_Amount ;;
  }

  dimension: geo_dimension {
    type: string
    sql: ${TABLE}.Geo_Dimension ;;
  }

  dimension: geo_dimension_index {
    type: string
    sql: ${TABLE}.Geo_Dimension_Index ;;
  }

  dimension: market {
    type: string
    sql: ${TABLE}.Market ;;
  }

  dimension: share_of_total {
    type: string
    sql: ${TABLE}.Share_Of_Total ;;
  }

  dimension: sum_ord_amount {
    type: number
    sql: ${TABLE}.Sum_Ord_Amount ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
