package com.google.firebase.analytics;

import androidx.annotation.Nullable;
import j$.util.Objects;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class zzc implements Callable {
    final /* synthetic */ FirebaseAnalytics zza;

    public zzc(FirebaseAnalytics firebaseAnalytics) {
        Objects.requireNonNull(firebaseAnalytics);
        this.zza = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    @Nullable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        return this.zza.zza().zzH();
    }
}
