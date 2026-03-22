package com.sensorsdata.analytics.android.sdk.network;

import java.util.Locale;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class RealResponse {
    public int code;
    public long contentLength;
    public String errorMsg;
    public Exception exception;
    public String location;
    public String result;

    public String toString() {
        String message;
        Locale locale = Locale.getDefault();
        Integer valueOf = Integer.valueOf(this.code);
        String str = this.result;
        String str2 = this.location;
        String str3 = this.errorMsg;
        Exception exc = this.exception;
        if (exc == null) {
            message = "";
        } else {
            message = exc.getMessage();
        }
        return String.format(locale, "code:%d\nresult:%s\nlocation:%s\nerrorMsg:%s\nexception:%s", valueOf, str, str2, str3, message);
    }
}
