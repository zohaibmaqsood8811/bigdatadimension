view: si_country_lookup {
  sql_table_name: ANALYTICS.SI_COUNTRY_LOOKUP ;;

  dimension: country_code {
    type: string
    sql: ${TABLE}."COUNTRY_CODE" ;;
  }

  dimension: country_desc {
    type: string
    sql: ${TABLE}."COUNTRY_DESC" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
