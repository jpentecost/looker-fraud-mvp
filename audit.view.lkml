view: audit {
  sql_table_name: public.audit ;;

  dimension: audit_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.audit_id ;;
  }

  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }

  dimension_group: create_tstamp {
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
    sql: ${TABLE}.create_tstamp ;;
  }

  dimension_group: update_tstamp {
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
    sql: ${TABLE}.update_tstamp ;;
  }

  measure: count {
    type: count
    drill_fields: [audit_id, app_name]
  }
}
