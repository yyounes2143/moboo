package com.sensorsdata.analytics.android.sdk.network;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class RequestHelper {
    private boolean isRedirected;

    /* compiled from: Proguard */
    /* renamed from: com.sensorsdata.analytics.android.sdk.network.RequestHelper$3  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$sensorsdata$analytics$android$sdk$network$HttpMethod;

        static {
            int[] iArr = new int[HttpMethod.values().length];
            $SwitchMap$com$sensorsdata$analytics$android$sdk$network$HttpMethod = iArr;
            try {
                iArr[HttpMethod.GET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sensorsdata$analytics$android$sdk$network$HttpMethod[HttpMethod.POST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class Builder {
        private HttpCallback callBack;
        private Map<String, String> headerMap;
        private HttpConfig httpConfig;
        private HttpMethod httpMethod;
        private String httpUrl;
        private String jsonData;
        private Map<String, String> paramsMap;
        private int retryCount = 1;

        public Builder(HttpMethod httpMethod, String str) {
            this.httpMethod = httpMethod;
            this.httpUrl = str;
        }

        public Builder callback(HttpCallback httpCallback) {
            this.callBack = httpCallback;
            return this;
        }

        public Builder connectionTimeout(int i) {
            if (this.httpConfig == null) {
                this.httpConfig = new HttpConfig();
            }
            this.httpConfig.setConnectionTimeout(i);
            return this;
        }

        public void execute() {
            HttpMethod httpMethod = this.httpMethod;
            if (httpMethod == HttpMethod.POST && this.paramsMap == null) {
                new RequestHelper(this.httpUrl, this.httpConfig, this.jsonData, this.headerMap, this.retryCount, this.callBack);
            } else {
                new RequestHelper(httpMethod, this.httpUrl, this.httpConfig, this.paramsMap, this.headerMap, this.retryCount, this.callBack);
            }
        }

        public Builder header(Map<String, String> map) {
            this.headerMap = map;
            return this;
        }

        public Builder jsonData(String str) {
            this.jsonData = str;
            return this;
        }

        public Builder params(Map<String, String> map) {
            this.paramsMap = map;
            return this;
        }

        public Builder readTimeout(int i) {
            if (this.httpConfig == null) {
                this.httpConfig = new HttpConfig();
            }
            this.httpConfig.setReadTimeout(i);
            return this;
        }

        public Builder retryCount(int i) {
            this.retryCount = i;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPostBody(Map<String, String> map, String str) {
        if (map != null) {
            return getPostBodyFormParamsMap(map);
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        return null;
    }

    private String getPostBodyFormParamsMap(Map<String, String> map) {
        if (map != null) {
            StringBuilder sb = new StringBuilder();
            try {
                boolean z = true;
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append("&");
                    }
                    sb.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
                    sb.append("=");
                    sb.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
                }
                return sb.toString();
            } catch (UnsupportedEncodingException unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPostBodyType(Map<String, String> map, String str) {
        if (map != null || TextUtils.isEmpty(str)) {
            return null;
        }
        return "application/json;charset=utf-8";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUrl(String str, Map<String, String> map) {
        String str2;
        if (str != null && map != null) {
            if (!str.contains("?")) {
                str2 = str + "?";
            } else {
                str2 = str + "&";
            }
            for (String str3 : map.keySet()) {
                str2 = str2 + str3 + "=" + map.get(str3) + "&";
            }
            return str2.substring(0, str2.length() - 1);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void urlHttpGet(final String str, final HttpConfig httpConfig, final Map<String, String> map, final Map<String, String> map2, final int i, final HttpCallback httpCallback) {
        final int i2 = i - 1;
        HttpTaskManager.execute(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.network.RequestHelper.1
            @Override // java.lang.Runnable
            public void run() {
                RealResponse data = new RealRequest().setHttpConfig(httpConfig).getData(RequestHelper.this.getUrl(str, map), map2);
                int i3 = data.code;
                if (i3 != 200 && i3 != 204) {
                    if (!RequestHelper.this.isRedirected && HttpUtils.needRedirects(data.code)) {
                        RequestHelper.this.isRedirected = true;
                        RequestHelper.this.urlHttpGet(data.location, httpConfig, map, map2, i, httpCallback);
                        return;
                    }
                    int i4 = i2;
                    if (i4 != 0) {
                        RequestHelper.this.urlHttpGet(str, httpConfig, map, map2, i4, httpCallback);
                        return;
                    }
                    HttpCallback httpCallback2 = httpCallback;
                    if (httpCallback2 != null) {
                        httpCallback2.onError(data);
                        return;
                    }
                    return;
                }
                HttpCallback httpCallback3 = httpCallback;
                if (httpCallback3 != null) {
                    httpCallback3.onSuccess(data);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void urlHttpPost(final String str, final HttpConfig httpConfig, final Map<String, String> map, final String str2, final Map<String, String> map2, final int i, final HttpCallback httpCallback) {
        final int i2 = i - 1;
        HttpTaskManager.execute(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.network.RequestHelper.2
            @Override // java.lang.Runnable
            public void run() {
                RealResponse postData = new RealRequest().setHttpConfig(httpConfig).postData(str, RequestHelper.this.getPostBody(map, str2), RequestHelper.this.getPostBodyType(map, str2), map2);
                int i3 = postData.code;
                if (i3 != 200 && i3 != 204) {
                    if (!RequestHelper.this.isRedirected && HttpUtils.needRedirects(postData.code)) {
                        RequestHelper.this.isRedirected = true;
                        RequestHelper.this.urlHttpPost(postData.location, httpConfig, map, str2, map2, i, httpCallback);
                        return;
                    }
                    int i4 = i2;
                    if (i4 != 0) {
                        RequestHelper.this.urlHttpPost(str, httpConfig, map, str2, map2, i4, httpCallback);
                        return;
                    }
                    HttpCallback httpCallback2 = httpCallback;
                    if (httpCallback2 != null) {
                        httpCallback2.onError(postData);
                        return;
                    }
                    return;
                }
                HttpCallback httpCallback3 = httpCallback;
                if (httpCallback3 != null) {
                    httpCallback3.onSuccess(postData);
                }
            }
        });
    }

    private RequestHelper(HttpMethod httpMethod, String str, HttpConfig httpConfig, Map<String, String> map, Map<String, String> map2, int i, HttpCallback httpCallback) {
        this.isRedirected = false;
        int i2 = AnonymousClass3.$SwitchMap$com$sensorsdata$analytics$android$sdk$network$HttpMethod[httpMethod.ordinal()];
        if (i2 == 1) {
            urlHttpGet(str, httpConfig, map, map2, i, httpCallback);
        } else if (i2 != 2) {
        } else {
            urlHttpPost(str, httpConfig, map, "", map2, i, httpCallback);
        }
    }

    private RequestHelper(String str, HttpConfig httpConfig, String str2, Map<String, String> map, int i, HttpCallback httpCallback) {
        this.isRedirected = false;
        urlHttpPost(str, httpConfig, null, str2, map, i, httpCallback);
    }
}
