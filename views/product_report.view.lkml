view: product_report {
  sql_table_name: rob.Product_Report ;;

  dimension: commission_month {
    hidden: yes
    type: string
    sql: ${TABLE}.Commission_Month ;;
  }

  dimension: geo_dimension {
    type: string
    sql: ${TABLE}.Geo_Dimension ;;
  }

  dimension: map_dimension {
    map_layer_name: countries
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

  dimension: product_name {
    type: string
    sql: ${TABLE}.Product_Name ;;
  }

  dimension: order_pv {
    hidden: yes
    type: number
    sql: ${TABLE}.Order_PV ;;
  }

  measure: total_order_pv {
    type: sum
    sql: ${order_pv} ;;
  }

  dimension: order_quantity {
    hidden: yes
    type: number
    sql: ${TABLE}.Order_Quantity ;;
  }

  measure: total_order_quantity {
    type: sum
    sql: ${order_quantity} ;;
  }

}
