package com.sensorsdata.analytics.android.sdk.core.business.exposure;

import android.view.View;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface SAExposureListener {
    void didExposure(View view, SAExposureData sAExposureData);

    boolean shouldExposure(View view, SAExposureData sAExposureData);
}
