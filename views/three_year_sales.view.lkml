view: three_year_sales {
  sql_table_name: rob.Three_Year_Sales ;;

  dimension: commission_mon {
    type: string
    sql: ${TABLE}.Commission_Mon ;;
  }

  dimension: commission_month {
    type: string
    sql: ${TABLE}.Commission_Month ;;
  }

  dimension: commission_year {
    type: string
    sql: ${TABLE}.Commission_Year ;;
  }

  dimension: geo_dimension {
    type: string
    sql: ${TABLE}.Geo_Dimension ;;
  }

  dimension: geo_dimension_index {
    type: string
    sql: ${TABLE}.Geo_Dimension_Index ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
