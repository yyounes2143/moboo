package com.applovin.impl;

import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public enum h {
    PUBLISHER_INITIATED("publisher_initiated"),
    SEQUENTIAL_OR_PRECACHE("sequential_or_precache"),
    REFRESH(ToolBar.REFRESH),
    EXPONENTIAL_RETRY("exponential_retry"),
    EXPIRED("expired"),
    NATIVE_AD_PLACER("native_ad_placer");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f3134a;

    h(String str) {
        this.f3134a = str;
    }

    public String b() {
        return this.f3134a;
    }
}
