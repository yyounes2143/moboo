package com.sensorsdata.analytics.android.sdk.network;

import com.sensorsdata.analytics.android.sdk.SALog;
import java.io.Serializable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class HttpConfig implements Serializable {
    private static final String TAG = "SA." + HttpConfig.class.getSimpleName();
    private int connectionTimeout = 30000;
    private int readTimeout = 30000;

    public int getConnectionTimeout() {
        return this.connectionTimeout;
    }

    public int getReadTimeout() {
        return this.readTimeout;
    }

    public void setConnectionTimeout(int i) {
        if (i < 1000) {
            SALog.i(TAG, "connectionTimeout minimum value is 1000ms");
            this.connectionTimeout = 1000;
            return;
        }
        this.connectionTimeout = i;
    }

    public void setReadTimeout(int i) {
        if (i < 1000) {
            SALog.i(TAG, "readTimeout minimum value is 1000ms");
            this.readTimeout = 1000;
            return;
        }
        this.readTimeout = i;
    }
}
