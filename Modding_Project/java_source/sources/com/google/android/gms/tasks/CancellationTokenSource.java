package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class CancellationTokenSource {
    private final zzb zza = new zzb();

    public void cancel() {
        this.zza.zza();
    }

    @NonNull
    public CancellationToken getToken() {
        return this.zza;
    }
}
