view: si_user_ip {
  sql_table_name: ANALYTICS.SI_USER_IP ;;

  dimension: client_ip {
    type: string
    sql: ${TABLE}."CLIENT_IP" ;;
  }

  dimension: if_val {
    type: number
    sql: ${TABLE}."IF_VAL" ;;
  }

  dimension: ist {
    type: string
    sql: ${TABLE}."IST" ;;
  }

  dimension: nd {
    type: string
    sql: ${TABLE}."ND" ;;
  }

  dimension: rd {
    type: string
    sql: ${TABLE}."RD" ;;
  }

  dimension: th {
    type: string
    sql: ${TABLE}."TH" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
