package com.google.android.gms.internal.engage;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zze implements Runnable {
    @Nullable
    private final TaskCompletionSource zza;

    public zze() {
        this.zza = null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            zza();
        } catch (Exception e) {
            zzc(e);
        }
    }

    public abstract void zza();

    @Nullable
    public final TaskCompletionSource zzb() {
        return this.zza;
    }

    public final void zzc(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.zza;
        if (taskCompletionSource != null) {
            taskCompletionSource.trySetException(exc);
        }
    }

    public zze(@Nullable TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }
}
