package com.sensorsdata.analytics.android.sdk.advert.deeplink;

import android.content.Intent;
import com.sensorsdata.analytics.android.sdk.advert.deeplink.DeepLinkManager;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class AbsDeepLink implements DeepLinkProcessor {
    private String deepLinkUrl;
    protected DeepLinkManager.OnDeepLinkParseFinishCallback mCallBack;

    public AbsDeepLink(Intent intent) {
        if (intent != null && intent.getData() != null) {
            setDeepLinkUrl(intent.getData().toString());
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.deeplink.DeepLinkProcessor
    public String getDeepLinkUrl() {
        return this.deepLinkUrl;
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.deeplink.DeepLinkProcessor
    public void setDeepLinkParseFinishCallback(DeepLinkManager.OnDeepLinkParseFinishCallback onDeepLinkParseFinishCallback) {
        this.mCallBack = onDeepLinkParseFinishCallback;
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.deeplink.DeepLinkProcessor
    public void setDeepLinkUrl(String str) {
        this.deepLinkUrl = str;
    }
}
