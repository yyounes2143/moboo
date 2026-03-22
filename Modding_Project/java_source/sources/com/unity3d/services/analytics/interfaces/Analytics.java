package com.unity3d.services.analytics.interfaces;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class Analytics {
    public static void initialize(IAnalytics iAnalytics) {
        com.unity3d.services.analytics.core.api.Analytics.setAnalyticsInterface(iAnalytics);
    }
}
