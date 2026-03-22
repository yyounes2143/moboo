package com.google.firebase.remoteconfig;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public interface ConfigUpdateListener {
    void onError(@NonNull FirebaseRemoteConfigException firebaseRemoteConfigException);

    void onUpdate(@NonNull ConfigUpdate configUpdate);
}
