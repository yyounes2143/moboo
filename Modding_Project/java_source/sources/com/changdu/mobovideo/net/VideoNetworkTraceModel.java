package com.changdu.mobovideo.net;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class VideoNetworkTraceModel implements Serializable {
    public static String CALL_END = "callEnd";
    public static String CALL_FAILED = "callFailed";
    public static String CALL_START = "callStart";
    public static String CONNECTION_ACQUIRED = "connectionAcquired";
    public static String CONNECTION_RELEASED = "connectionReleased";
    public static String CONNECT_END = "connectEnd";
    public static String CONNECT_FAILED = "connectFailed";
    public static String CONNECT_START = "connectStart";
    public static String DNS_END = "dnsEnd";
    public static String DNS_START = "dnsStart";
    public static String REQUEST_BODY_END = "requestBodyEnd";
    public static String REQUEST_BODY_START = "requestBodyStart";
    public static String REQUEST_HEADERS_END = "requestHeadersEnd";
    public static String REQUEST_HEADERS_START = "requestHeadersStart";
    public static String RESPONSE_BODY_END = "responseBodyEnd";
    public static String RESPONSE_BODY_START = "responseBodyStart";
    public static String RESPONSE_HEADERS_END = "responseHeadersEnd";
    public static String RESPONSE_HEADERS_START = "responseHeadersStart";
    public static String SECURE_CONNECT_END = "secureConnectEnd";
    public static String SECURE_CONNECT_START = "secureConnectStart";
    public static String TRACE_NAME_CONNECT = "ConnectTime";
    public static String TRACE_NAME_DNS = "DNSTime";
    public static String TRACE_NAME_REQUEST_BODY = "RequestBodyTime";
    public static String TRACE_NAME_REQUEST_HEADERS = "RequestHeadersTime";
    public static String TRACE_NAME_RESPONSE_BODY = "ResponseBodyTime";
    public static String TRACE_NAME_RESPONSE_HEADERS = "ResponseHeadersTime";
    public static String TRACE_NAME_SECURE_CONNECT = "SecureConnectTime";
    public static String TRACE_NAME_SERVER_RESPONSE = "ServerBizTime";
    public static String TRACE_NAME_TOTAL = "TotalTime";
    public static String TRACE_URL = "Url";
    private String id;
    private Map<String, Long> networkEventsMap = new HashMap();
    private long timestamp;
    private String url;

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Map<String, Long> map, String str, String str2) {
        if (map.containsKey(str) && map.containsKey(str2)) {
            return map.get(str2).longValue() - map.get(str).longValue();
        }
        return 0L;
    }

    public Map<String, Object> generateTraceItemMap(Boolean bool) {
        HashMap hashMap = new HashMap();
        if (TextUtils.isEmpty(this.url)) {
            return hashMap;
        }
        hashMap.put(TRACE_URL, this.url);
        hashMap.put(TRACE_NAME_TOTAL, Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.networkEventsMap, CALL_START, CALL_END)));
        hashMap.put(TRACE_NAME_DNS, Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.networkEventsMap, DNS_START, DNS_END)));
        hashMap.put(TRACE_NAME_SECURE_CONNECT, Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.networkEventsMap, SECURE_CONNECT_START, SECURE_CONNECT_END)));
        hashMap.put(TRACE_NAME_CONNECT, Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.networkEventsMap, CONNECT_START, CONNECT_END)));
        hashMap.put(TRACE_NAME_REQUEST_HEADERS, Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.networkEventsMap, REQUEST_HEADERS_START, REQUEST_HEADERS_END)));
        hashMap.put(TRACE_NAME_REQUEST_BODY, Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.networkEventsMap, REQUEST_BODY_START, REQUEST_BODY_END)));
        if (bool.booleanValue()) {
            hashMap.put(TRACE_NAME_SERVER_RESPONSE, Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.networkEventsMap, REQUEST_HEADERS_END, RESPONSE_HEADERS_START)));
        } else {
            hashMap.put(TRACE_NAME_SERVER_RESPONSE, Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.networkEventsMap, REQUEST_BODY_END, RESPONSE_HEADERS_START)));
        }
        hashMap.put(TRACE_NAME_RESPONSE_HEADERS, Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.networkEventsMap, RESPONSE_HEADERS_START, RESPONSE_HEADERS_END)));
        hashMap.put(TRACE_NAME_RESPONSE_BODY, Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.networkEventsMap, RESPONSE_BODY_START, RESPONSE_BODY_END)));
        return hashMap;
    }

    public String getId() {
        return this.id;
    }

    public Map<String, Long> getNetworkEventsMap() {
        return this.networkEventsMap;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public String getUrl() {
        return this.url;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setNetworkEventsMap(Map<String, Long> map) {
        this.networkEventsMap = map;
    }

    public void setTimestamp(long j) {
        this.timestamp = j;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
