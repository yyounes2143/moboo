package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.EventInternal;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface TransportBackend {
    EventInternal decorate(EventInternal eventInternal);

    BackendResponse send(BackendRequest backendRequest);
}
