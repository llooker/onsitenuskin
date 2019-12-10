view: product_report {
  sql_table_name: rob.Product_Report ;;

  dimension: commission_month {
    type: string
    sql: ${TABLE}.Commission_Month ;;
  }

  dimension: geo_dimension {
    type: string
    sql: ${TABLE}.Geo_Dimension ;;
  }

  dimension: geo_dimension_index {
    type: string
    sql: ${TABLE}.Geo_Dimension_Index ;;
  }

  dimension: item_sku {
    type: string
    sql: ${TABLE}.Item_SKU ;;
  }

  dimension: order_pv {
    type: number
    sql: ${TABLE}.Order_PV ;;
  }

  dimension: order_quantity {
    type: number
    sql: ${TABLE}.Order_Quantity ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.Product_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
