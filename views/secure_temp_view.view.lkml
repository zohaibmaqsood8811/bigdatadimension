view: secure_temp_view {
  sql_table_name: ANALYTICS.SECURE_TEMP_VIEW ;;

  dimension: country_code {
    type: string
    sql: ${TABLE}.COUNTRY_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
