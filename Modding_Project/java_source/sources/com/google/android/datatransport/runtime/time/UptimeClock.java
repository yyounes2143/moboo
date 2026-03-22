package com.google.android.datatransport.runtime.time;

import android.os.SystemClock;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class UptimeClock implements Clock {
    @Override // com.google.android.datatransport.runtime.time.Clock
    public long getTime() {
        return SystemClock.elapsedRealtime();
    }
}
