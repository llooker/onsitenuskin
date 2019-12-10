connection: "bigquery"

# include all the views
include: "/views/**/*.view"

datagroup: on_site_nu_skin_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: on_site_nu_skin_default_datagroup
