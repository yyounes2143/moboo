package com.sensorsdata.analytics.android.sdk.network;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class HttpCallback<T> {
    static Handler sMainHandler = new Handler(Looper.getMainLooper());

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static abstract class JsonCallback extends HttpCallback<JSONObject> {
        @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
        public JSONObject onParseResponse(String str) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                return new JSONObject(str);
            } catch (JSONException e) {
                SALog.printStackTrace(e);
                return null;
            }
        }

        @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
        public void onAfter() {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static abstract class StringCallback extends HttpCallback<String> {
        @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
        public String onParseResponse(String str) {
            return str;
        }
    }

    public abstract void onAfter();

    public void onError(final RealResponse realResponse) {
        final String str;
        if (!TextUtils.isEmpty(realResponse.result)) {
            str = realResponse.result;
        } else if (!TextUtils.isEmpty(realResponse.errorMsg)) {
            str = realResponse.errorMsg;
        } else {
            Exception exc = realResponse.exception;
            if (exc != null) {
                str = exc.toString();
            } else {
                str = "unknown error";
            }
        }
        sMainHandler.post(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.network.HttpCallback.1
            @Override // java.lang.Runnable
            public void run() {
                HttpCallback.this.onFailure(realResponse.code, str);
                HttpCallback.this.onAfter();
            }
        });
    }

    public abstract void onFailure(int i, String str);

    public abstract T onParseResponse(String str);

    public abstract void onResponse(T t);

    public void onSuccess(RealResponse realResponse) {
        final T onParseResponse = onParseResponse(realResponse.result);
        sMainHandler.post(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.network.HttpCallback.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                HttpCallback.this.onResponse(onParseResponse);
                HttpCallback.this.onAfter();
            }
        });
    }
}
