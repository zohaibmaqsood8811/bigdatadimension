view: si_db_storage {
  sql_table_name: ANALYTICS.SI_DB_STORAGE ;;

  dimension: average_database_bytes {
    type: number
    sql: ${TABLE}."AVERAGE_DATABASE_BYTES" ;;
  }

  dimension: average_failsafe_bytes {
    type: number
    sql: ${TABLE}."AVERAGE_FAILSAFE_BYTES" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  dimension_group: usage {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."USAGE_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: [database_name]
  }
}
