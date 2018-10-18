view: si_ip_lookup {
  sql_table_name: ANALYTICS.SI_IP_LOOKUP ;;

  dimension: country_code {
    type: string
    sql: ${TABLE}."COUNTRY_CODE" ;;
  }

  dimension: end_ip {
    type: string
    sql: ${TABLE}."END_IP" ;;
  }

  dimension: first_val {
    type: number
    sql: ${TABLE}."FIRST_VAL" ;;
  }

  dimension: last_val {
    type: number
    sql: ${TABLE}."LAST_VAL" ;;
  }

  dimension: start_ip {
    type: string
    sql: ${TABLE}."START_IP" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
