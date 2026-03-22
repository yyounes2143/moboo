package com.mbridge.msdk.foundation.download.core;

import java.util.concurrent.ExecutorService;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public interface ExecutorSupplier {
    ExecutorService getBackgroundTasks();

    ExecutorService getDownloadResultTasks();

    DownloadExecutor getDownloadTasks();

    ExecutorService getLruCacheThreadTasks();
}
