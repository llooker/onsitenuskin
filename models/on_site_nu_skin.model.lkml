connection: "bigquery"

# include all the views
include: "/views/**/*.view"

datagroup: on_site_nu_skin_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: on_site_nu_skin_default_datagroup

explore: top_customer_data {}

explore: three_year_sales {
  join: dates {
    type: left_outer
    relationship: many_to_one
    sql_on: ${three_year_sales.commission_month} = ${dates.comm_yyyy_mm} ;;
  }
}
