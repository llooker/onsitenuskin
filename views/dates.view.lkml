view: dates {
  sql_table_name: rob.dates ;;

  dimension: comm_mon {
    type: string
    sql: ${TABLE}.COMM_MON ;;
  }

  dimension: comm_mth_id {
    type: number
    sql: ${TABLE}.COMM_MTH_ID ;;
  }

  dimension: comm_per_cd {
    type: string
    sql: ${TABLE}.COMM_PER_CD ;;
  }

  dimension: comm_qtr {
    type: string
    sql: ${TABLE}.COMM_QTR ;;
  }

  dimension: comm_yr {
    type: string
    sql: ${TABLE}.COMM_YR ;;
  }

  dimension: comm_yyyy_mm {
    type: string
    sql: ${TABLE}.COMM_YYYY_MM ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.Date AS TIMESTAMP) ;;
  }

  dimension: end_dt {
    type: string
    sql: ${TABLE}.END_DT ;;
  }

  dimension: offset {
    type: string
    sql: ${TABLE}.OFFSET ;;
  }

  dimension: pm_comm_per_cd {
    type: string
    sql: ${TABLE}.PM_COMM_PER_CD ;;
  }

  dimension: pmpy_comm_per_cd {
    type: string
    sql: ${TABLE}.PMPY_COMM_PER_CD ;;
  }

  dimension: pq_comm_per_cd {
    type: string
    sql: ${TABLE}.PQ_COMM_PER_CD ;;
  }

  dimension: py_comm_per_cd {
    type: string
    sql: ${TABLE}.PY_COMM_PER_CD ;;
  }

  dimension: strt_dt {
    type: string
    sql: ${TABLE}.STRT_DT ;;
  }

  dimension: updt_tmstp {
    type: string
    sql: ${TABLE}.UPDT_TMSTP ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
