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

  dimension: looker_image {
    type: string
    sql: ${TABLE}."NAME"
      html: <img src="https://s3.console.aws.amazon.com/s3/buckets/lookerpoc/User_Images\"${TABLE}.NAME/> ;;

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
