# The name of this view in Looker is "Requests"
view: requests {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Logs_CloudArmor.requests` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: error_groups {
    hidden: yes
    sql: ${TABLE}.errorGroups ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "HTTP Request Cache Fill Bytes" in Explore.

  dimension: http_request__cache_fill_bytes {
    type: number
    sql: ${TABLE}.httpRequest.cacheFillBytes ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Fill Bytes"
  }

  dimension: http_request__cache_hit {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheHit ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Hit"
  }

  dimension: http_request__cache_lookup {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheLookup ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Lookup"
  }

  dimension: http_request__cache_validated_with_origin_server {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheValidatedWithOriginServer ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Validated with Origin Server"
  }

  dimension: http_request__latency {
    type: number
    sql: ${TABLE}.httpRequest.latency ;;
    group_label: "HTTP Request"
    group_item_label: "Latency"
  }

  dimension: http_request__protocol {
    type: string
    sql: ${TABLE}.httpRequest.protocol ;;
    group_label: "HTTP Request"
    group_item_label: "Protocol"
  }

  dimension: http_request__referer {
    type: string
    sql: ${TABLE}.httpRequest.referer ;;
    group_label: "HTTP Request"
    group_item_label: "Referer"
  }

  dimension: http_request__remote_ip {
    type: string
    sql: ${TABLE}.httpRequest.remoteIp ;;
    group_label: "HTTP Request"
    group_item_label: "Remote IP"
  }

  dimension: http_request__request_method {
    type: string
    sql: ${TABLE}.httpRequest.requestMethod ;;
    group_label: "HTTP Request"
    group_item_label: "Request Method"
  }

  dimension: http_request__request_size {
    type: number
    sql: ${TABLE}.httpRequest.requestSize ;;
    group_label: "HTTP Request"
    group_item_label: "Request Size"
  }

  dimension: http_request__request_url {
    type: string
    sql: ${TABLE}.httpRequest.requestUrl ;;
    group_label: "HTTP Request"
    group_item_label: "Request URL"
  }

  dimension: http_request__response_size {
    type: number
    sql: ${TABLE}.httpRequest.responseSize ;;
    group_label: "HTTP Request"
    group_item_label: "Response Size"
  }

  dimension: http_request__server_ip {
    type: string
    sql: ${TABLE}.httpRequest.serverIp ;;
    group_label: "HTTP Request"
    group_item_label: "Server IP"
  }

  dimension: http_request__status {
    type: number
    sql: ${TABLE}.httpRequest.status ;;
    group_label: "HTTP Request"
    group_item_label: "Status"
  }

  dimension: http_request__user_agent {
    type: string
    sql: ${TABLE}.httpRequest.userAgent ;;
    group_label: "HTTP Request"
    group_item_label: "User Agent"
  }

  dimension: insert_id {
    type: string
    sql: ${TABLE}.insertId ;;
  }

  dimension: jsonpayload_type_loadbalancerlogentry___type {
    type: string
    sql: ${TABLE}.jsonpayload_type_loadbalancerlogentry._type ;;
    group_label: "Jsonpayload Type Loadbalancerlogentry"
    group_item_label: " Type"
  }

  dimension: jsonpayload_type_loadbalancerlogentry__backendtargetprojectnumber {
    type: string
    sql: ${TABLE}.jsonpayload_type_loadbalancerlogentry.backendtargetprojectnumber ;;
    group_label: "Jsonpayload Type Loadbalancerlogentry"
    group_item_label: "Backendtargetprojectnumber"
  }

  dimension: jsonpayload_type_loadbalancerlogentry__cachedecision {
    hidden: yes
    sql: ${TABLE}.jsonpayload_type_loadbalancerlogentry.cachedecision ;;
    group_label: "Jsonpayload Type Loadbalancerlogentry"
    group_item_label: "Cachedecision"
  }

  dimension: jsonpayload_type_loadbalancerlogentry__enforcedsecuritypolicy__configuredaction {
    type: string
    sql: ${TABLE}.jsonpayload_type_loadbalancerlogentry.enforcedsecuritypolicy.configuredaction ;;
    group_label: "Jsonpayload Type Loadbalancerlogentry Enforcedsecuritypolicy"
    group_item_label: "Configuredaction"
  }

  dimension: jsonpayload_type_loadbalancerlogentry__enforcedsecuritypolicy__name {
    type: string
    sql: ${TABLE}.jsonpayload_type_loadbalancerlogentry.enforcedsecuritypolicy.name ;;
    group_label: "Jsonpayload Type Loadbalancerlogentry Enforcedsecuritypolicy"
    group_item_label: "Name"
  }

  dimension: jsonpayload_type_loadbalancerlogentry__enforcedsecuritypolicy__outcome {
    type: string
    sql: ${TABLE}.jsonpayload_type_loadbalancerlogentry.enforcedsecuritypolicy.outcome ;;
    group_label: "Jsonpayload Type Loadbalancerlogentry Enforcedsecuritypolicy"
    group_item_label: "Outcome"
  }

  dimension: jsonpayload_type_loadbalancerlogentry__enforcedsecuritypolicy__preconfiguredexprids {
    hidden: yes
    sql: ${TABLE}.jsonpayload_type_loadbalancerlogentry.enforcedsecuritypolicy.preconfiguredexprids ;;
    group_label: "Jsonpayload Type Loadbalancerlogentry Enforcedsecuritypolicy"
    group_item_label: "Preconfiguredexprids"
  }

  dimension: jsonpayload_type_loadbalancerlogentry__enforcedsecuritypolicy__priority {
    type: number
    sql: ${TABLE}.jsonpayload_type_loadbalancerlogentry.enforcedsecuritypolicy.priority ;;
    group_label: "Jsonpayload Type Loadbalancerlogentry Enforcedsecuritypolicy"
    group_item_label: "Priority"
  }

  dimension: jsonpayload_type_loadbalancerlogentry__remoteip {
    type: string
    sql: ${TABLE}.jsonpayload_type_loadbalancerlogentry.remoteip ;;
    group_label: "Jsonpayload Type Loadbalancerlogentry"
    group_item_label: "Remoteip"
  }

  dimension: jsonpayload_type_loadbalancerlogentry__securitypolicyrequestdata__remoteipinfo__asn {
    type: number
    sql: ${TABLE}.jsonpayload_type_loadbalancerlogentry.securitypolicyrequestdata.remoteipinfo.asn ;;
    group_label: "Jsonpayload Type Loadbalancerlogentry Securitypolicyrequestdata Remoteipinfo"
    group_item_label: "Asn"
  }

  dimension: jsonpayload_type_loadbalancerlogentry__securitypolicyrequestdata__remoteipinfo__regioncode {
    type: string
    sql: ${TABLE}.jsonpayload_type_loadbalancerlogentry.securitypolicyrequestdata.remoteipinfo.regioncode ;;
    group_label: "Jsonpayload Type Loadbalancerlogentry Securitypolicyrequestdata Remoteipinfo"
    group_item_label: "Regioncode"
  }

  dimension: jsonpayload_type_loadbalancerlogentry__securitypolicyrequestdata__tlsja3fingerprint {
    type: string
    sql: ${TABLE}.jsonpayload_type_loadbalancerlogentry.securitypolicyrequestdata.tlsja3fingerprint ;;
    group_label: "Jsonpayload Type Loadbalancerlogentry Securitypolicyrequestdata"
    group_item_label: "Tlsja3fingerprint"
  }

  dimension: jsonpayload_type_loadbalancerlogentry__securitypolicyrequestdata__tlsja4fingerprint {
    type: string
    sql: ${TABLE}.jsonpayload_type_loadbalancerlogentry.securitypolicyrequestdata.tlsja4fingerprint ;;
    group_label: "Jsonpayload Type Loadbalancerlogentry Securitypolicyrequestdata"
    group_item_label: "Tlsja4fingerprint"
  }

  dimension: jsonpayload_type_loadbalancerlogentry__statusdetails {
    type: string
    sql: ${TABLE}.jsonpayload_type_loadbalancerlogentry.statusdetails ;;
    group_label: "Jsonpayload Type Loadbalancerlogentry"
    group_item_label: "Statusdetails"
  }

  dimension: log_name {
    type: string
    sql: ${TABLE}.logName ;;
  }

  dimension: operation__first {
    type: yesno
    sql: ${TABLE}.operation.first ;;
    group_label: "Operation"
    group_item_label: "First"
  }

  dimension: operation__id {
    type: string
    sql: ${TABLE}.operation.id ;;
    group_label: "Operation"
    group_item_label: "ID"
  }

  dimension: operation__last {
    type: yesno
    sql: ${TABLE}.operation.last ;;
    group_label: "Operation"
    group_item_label: "Last"
  }

  dimension: operation__producer {
    type: string
    sql: ${TABLE}.operation.producer ;;
    group_label: "Operation"
    group_item_label: "Producer"
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: receive_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.receiveTimestamp ;;
  }

  dimension: resource__labels__backend_service_name {
    type: string
    sql: ${TABLE}.resource.labels.backend_service_name ;;
    group_label: "Resource Labels"
    group_item_label: "Backend Service Name"
  }

  dimension: resource__labels__forwarding_rule_name {
    type: string
    sql: ${TABLE}.resource.labels.forwarding_rule_name ;;
    group_label: "Resource Labels"
    group_item_label: "Forwarding Rule Name"
  }

  dimension: resource__labels__project_id {
    type: string
    sql: ${TABLE}.resource.labels.project_id ;;
    group_label: "Resource Labels"
    group_item_label: "Project ID"
  }

  dimension: resource__labels__target_proxy_name {
    type: string
    sql: ${TABLE}.resource.labels.target_proxy_name ;;
    group_label: "Resource Labels"
    group_item_label: "Target Proxy Name"
  }

  dimension: resource__labels__url_map_name {
    type: string
    sql: ${TABLE}.resource.labels.url_map_name ;;
    group_label: "Resource Labels"
    group_item_label: "URL Map Name"
  }

  dimension: resource__labels__zone {
    type: string
    sql: ${TABLE}.resource.labels.zone ;;
    group_label: "Resource Labels"
    group_item_label: "Zone"
  }

  dimension: resource__type {
    type: string
    sql: ${TABLE}.resource.type ;;
    group_label: "Resource"
    group_item_label: "Type"
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }

  dimension: source_location__file {
    type: string
    sql: ${TABLE}.sourceLocation.file ;;
    group_label: "Source Location"
    group_item_label: "File"
  }

  dimension: source_location__function {
    type: string
    sql: ${TABLE}.sourceLocation.function ;;
    group_label: "Source Location"
    group_item_label: "Function"
  }

  dimension: source_location__line {
    type: number
    sql: ${TABLE}.sourceLocation.line ;;
    group_label: "Source Location"
    group_item_label: "Line"
  }

  dimension: span_id {
    type: string
    sql: ${TABLE}.spanId ;;
  }

  dimension: split__index {
    type: number
    sql: ${TABLE}.split.index ;;
    group_label: "Split"
    group_item_label: "Index"
  }

  dimension: split__total_splits {
    type: number
    sql: ${TABLE}.split.totalSplits ;;
    group_label: "Split"
    group_item_label: "Total Splits"
  }

  dimension: split__uid {
    type: string
    sql: ${TABLE}.split.uid ;;
    group_label: "Split"
    group_item_label: "Uid"
  }

  dimension: text_payload {
    type: string
    sql: ${TABLE}.textPayload ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: trace {
    type: string
    sql: ${TABLE}.trace ;;
  }

  dimension: trace_sampled {
    type: yesno
    sql: ${TABLE}.traceSampled ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	log_name,
	resource__labels__url_map_name,
	resource__labels__target_proxy_name,
	resource__labels__forwarding_rule_name,
	resource__labels__backend_service_name,
	jsonpayload_type_loadbalancerlogentry__enforcedsecuritypolicy__name
	]
  }

}

# The name of this view in Looker is "Requests Error Groups"
view: requests__error_groups {
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: id ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: requests__error_groups {
    type: string
    hidden: yes
    sql: requests__error_groups ;;
  }
}

# The name of this view in Looker is "Requests Jsonpayload Type Loadbalancerlogentry Cachedecision"
view: requests__jsonpayload_type_loadbalancerlogentry__cachedecision {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Requests Jsonpayload Type Loadbalancerlogentry Cachedecision" in Explore.

  dimension: requests__jsonpayload_type_loadbalancerlogentry__cachedecision {
    type: string
    sql: requests__jsonpayload_type_loadbalancerlogentry__cachedecision ;;
  }
}

# The name of this view in Looker is "Requests Jsonpayload Type Loadbalancerlogentry Enforcedsecuritypolicy Preconfiguredexprids"
view: requests__jsonpayload_type_loadbalancerlogentry__enforcedsecuritypolicy__preconfiguredexprids {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Requests Jsonpayload Type Loadbalancerlogentry Enforcedsecuritypolicy Preconfiguredexprids" in Explore.

  dimension: requests__jsonpayload_type_loadbalancerlogentry__enforcedsecuritypolicy__preconfiguredexprids {
    type: string
    sql: requests__jsonpayload_type_loadbalancerlogentry__enforcedsecuritypolicy__preconfiguredexprids ;;
  }
}
