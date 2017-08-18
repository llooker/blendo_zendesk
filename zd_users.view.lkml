view: zd_users {
  sql_table_name: public.zd_users ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: blendo_imported_at {
    type: number
    sql: ${TABLE}.blendo_imported_at ;;
  }

  dimension: chat_only {
    type: yesno
    sql: ${TABLE}.chat_only ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: custom_role_id {
    type: string
    sql: ${TABLE}.custom_role_id ;;
  }

  dimension: default_group_id {
    type: number
    sql: ${TABLE}.default_group_id ;;
  }

  dimension: details {
    type: string
    sql: ${TABLE}.details ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }

  dimension_group: last_login {
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
    sql: ${TABLE}.last_login_at ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: locale_id {
    type: string
    sql: ${TABLE}.locale_id ;;
  }

  dimension: moderator {
    type: yesno
    sql: ${TABLE}.moderator ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: only_private_comments {
    type: yesno
    sql: ${TABLE}.only_private_comments ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organization_id ;;
  }

  dimension: restricted_agent {
    type: yesno
    sql: ${TABLE}.restricted_agent ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
  }

  dimension: shared {
    type: yesno
    sql: ${TABLE}.shared ;;
  }

  dimension: shared_agent {
    type: yesno
    sql: ${TABLE}.shared_agent ;;
  }

  dimension: signature {
    type: string
    sql: ${TABLE}.signature ;;
  }

  dimension: suspended {
    type: yesno
    sql: ${TABLE}.suspended ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: ticket_restriction {
    type: string
    sql: ${TABLE}.ticket_restriction ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.time_zone ;;
  }

  dimension: two_factor_auth_enabled {
    type: yesno
    sql: ${TABLE}.two_factor_auth_enabled ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user_fields_system__embeddable_last_seen {
    type: string
    sql: ${TABLE}.user_fields_system__embeddable_last_seen ;;
  }

  dimension: verified {
    type: yesno
    sql: ${TABLE}.verified ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
