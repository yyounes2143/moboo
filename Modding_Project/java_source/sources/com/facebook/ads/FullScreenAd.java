package com.facebook.ads;

import androidx.annotation.Keep;
import com.facebook.ads.Ad;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface FullScreenAd extends Ad {

    /* compiled from: Proguard */
    @Keep
    /* loaded from: classes3.dex */
    public interface ShowAdConfig {
    }

    /* compiled from: Proguard */
    @Keep
    /* loaded from: classes3.dex */
    public interface ShowConfigBuilder {
        ShowAdConfig build();
    }

    Ad.LoadConfigBuilder buildLoadAdConfig();

    ShowConfigBuilder buildShowAdConfig();

    boolean show();
}
