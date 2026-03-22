package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzpc {
    public final String zza;
    @Nullable
    private final zzpb zzb;
    @Nullable
    private final Object zzc;

    static {
        new zzpc("");
    }

    public zzpc(String str) {
        zzpb zzpbVar;
        this.zza = str;
        if (Build.VERSION.SDK_INT >= 31) {
            zzpbVar = new zzpb();
        } else {
            zzpbVar = null;
        }
        this.zzb = zzpbVar;
        this.zzc = new Object();
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzpc)) {
            return false;
        }
        zzpc zzpcVar = (zzpc) obj;
        if (Objects.equals(this.zza, zzpcVar.zza) && Objects.equals(this.zzb, zzpcVar.zzb) && Objects.equals(this.zzc, zzpcVar.zzc)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb, this.zzc);
    }

    @RequiresApi(31)
    public final synchronized LogSessionId zza() {
        zzpb zzpbVar;
        zzpbVar = this.zzb;
        if (zzpbVar != null) {
        } else {
            throw null;
        }
        return zzpbVar.zza;
    }

    @RequiresApi(31)
    public final synchronized void zzb(LogSessionId logSessionId) {
        LogSessionId logSessionId2;
        boolean equals;
        zzpb zzpbVar = this.zzb;
        if (zzpbVar != null) {
            LogSessionId logSessionId3 = zzpbVar.zza;
            logSessionId2 = LogSessionId.LOG_SESSION_ID_NONE;
            equals = logSessionId3.equals(logSessionId2);
            zzdc.zzf(equals);
            zzpbVar.zza = logSessionId;
        } else {
            throw null;
        }
    }
}
