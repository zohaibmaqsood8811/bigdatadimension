view: si_users_image {
  sql_table_name: ANALYTICS.SI_USERS_IMAGE ;;

  dimension: eng_name {
    type: string
    sql: ${TABLE}."ENG_NAME" ;;
  }

  dimension: image_url {
    type: string
    sql: ${TABLE}."IMAGE_URL" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [name, eng_name]
  }
}
