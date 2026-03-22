package com.google.firebase.remoteconfig;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public interface FirebaseRemoteConfigInfo {
    @NonNull
    FirebaseRemoteConfigSettings getConfigSettings();

    long getFetchTimeMillis();

    int getLastFetchStatus();
}
