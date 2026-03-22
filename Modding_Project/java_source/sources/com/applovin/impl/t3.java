package com.applovin.impl;

import android.webkit.WebView;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.CreativeType;
import com.iab.omid.library.applovin.adsession.ImpressionType;
import com.iab.omid.library.applovin.adsession.Owner;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class t3 extends s3 {
    public t3(com.applovin.impl.sdk.ad.a aVar) {
        super(aVar);
    }

    @Override // com.applovin.impl.s3
    public AdSessionContext a(WebView webView) {
        try {
            if (this.f3536a.getOpenMeasurementVerificationScriptResources().size() > 0) {
                return AdSessionContext.createNativeAdSessionContext(this.b.d0().b(), this.b.d0().a(), this.f3536a.getOpenMeasurementVerificationScriptResources(), this.f3536a.getOpenMeasurementContentUrl(), this.f3536a.getOpenMeasurementCustomReferenceData());
            }
            return AdSessionContext.createHtmlAdSessionContext(this.b.d0().b(), webView, this.f3536a.getOpenMeasurementContentUrl(), this.f3536a.getOpenMeasurementCustomReferenceData());
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.d, "Failed to create ad session context", th);
                return null;
            }
            return null;
        }
    }

    @Override // com.applovin.impl.s3
    public AdSessionConfiguration a() {
        try {
            return AdSessionConfiguration.createAdSessionConfiguration(CreativeType.HTML_DISPLAY, ImpressionType.LOADED, Owner.NATIVE, Owner.NONE, false);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.d, "Failed to create ad session configuration", th);
                return null;
            }
            return null;
        }
    }
}
