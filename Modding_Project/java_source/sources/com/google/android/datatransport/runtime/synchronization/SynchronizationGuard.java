package com.google.android.datatransport.runtime.synchronization;

import androidx.annotation.WorkerThread;
/* compiled from: Proguard */
@WorkerThread
/* loaded from: classes4.dex */
public interface SynchronizationGuard {

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface CriticalSection<T> {
        T execute();
    }

    <T> T runCriticalSection(CriticalSection<T> criticalSection);
}
