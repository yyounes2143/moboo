package com.google.firebase.crashlytics.internal.common;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class SystemCurrentTimeProvider implements CurrentTimeProvider {
    @Override // com.google.firebase.crashlytics.internal.common.CurrentTimeProvider
    public long getCurrentTimeMillis() {
        return System.currentTimeMillis();
    }
}
