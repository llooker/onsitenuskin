view: three_year_sales {
  sql_table_name: rob.Three_Year_Sales ;;

  dimension: commission_mon {
    hidden: yes
    type: string
    sql: ${TABLE}.Commission_Mon ;;
  }

  dimension: commission_month {
    hidden: yes
    type: string
    sql: ${TABLE}.Commission_Month ;;
  }

  dimension: commission_year {
    hidden: yes
    type: string
    sql: ${TABLE}.Commission_Year ;;
  }

  dimension: geo_dimension {
    group_label: "Geo Analysis"
    type: string
    sql: ${TABLE}.Geo_Dimension ;;
  }

  dimension: map_dimension {
    map_layer_name: countries
    type: string
    sql: ${TABLE}.Geo_Dimension ;;
  }

  dimension: geo_dimension_index {
    group_label: "Geo Analysis"

    type: string
    sql: ${TABLE}.Geo_Dimension_Index ;;
  }

  dimension: sales {
    hidden: yes
    type: number
    sql: ${TABLE}.Sales ;;
  }

  measure: total_sales {
    value_format_name: usd_0
    type: sum
    sql: ${sales} ;;
  }

  measure: average_sales {
    value_format_name: usd_0
    type: average
    sql: ${sales} ;;

  }

}
