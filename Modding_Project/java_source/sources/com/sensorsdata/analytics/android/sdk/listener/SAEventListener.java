package com.sensorsdata.analytics.android.sdk.listener;

import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface SAEventListener {
    void identify();

    void login();

    void logout();

    void resetAnonymousId();

    void trackEvent(JSONObject jSONObject);
}
