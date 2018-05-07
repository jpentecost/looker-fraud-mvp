connection: "fraud_reporting-dev"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: fraud_mvp_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fraud_mvp_default_datagroup

explore: audit {}

explore: dimcustomer {}

explore: fraud_detail {}

explore: fraud_scoring {}
