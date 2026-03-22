package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdd {
    @Nullable
    private static Executor zza;

    public static synchronized Executor zza() {
        Executor executor;
        synchronized (zzdd.class) {
            try {
                if (zza == null) {
                    zza = zzeu.zzF("ExoPlayer:BackgroundExecutor");
                }
                executor = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return executor;
    }
}
