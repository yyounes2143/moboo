package com.sensorsdata.analytics.android.sdk.visual.bridge;

import android.view.View;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface WebViewJavascriptBridge {
    void sendToWeb(View view, String str, Object obj);

    void sendToWeb(View view, String str, Object obj, OnBridgeCallback onBridgeCallback);
}
