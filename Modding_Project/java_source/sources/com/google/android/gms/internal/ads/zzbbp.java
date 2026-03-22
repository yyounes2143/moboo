package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import androidx.annotation.Nullable;
import java.util.concurrent.Future;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbbp {
    @Nullable
    private zzbbe zza;
    private boolean zzb;
    private final Context zzc;
    private final Object zzd = new Object();

    public zzbbp(Context context) {
        this.zzc = context;
    }

    public static /* bridge */ /* synthetic */ void zze(zzbbp zzbbpVar) {
        synchronized (zzbbpVar.zzd) {
            try {
                zzbbe zzbbeVar = zzbbpVar.zza;
                if (zzbbeVar == null) {
                    return;
                }
                zzbbeVar.disconnect();
                zzbbpVar.zza = null;
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Future zzc(zzbbf zzbbfVar) {
        zzbbj zzbbjVar = new zzbbj(this);
        zzbbn zzbbnVar = new zzbbn(this, zzbbfVar, zzbbjVar);
        zzbbo zzbboVar = new zzbbo(this, zzbbjVar);
        synchronized (this.zzd) {
            zzbbe zzbbeVar = new zzbbe(this.zzc, com.google.android.gms.ads.internal.zzv.zzv().zzb(), zzbbnVar, zzbboVar);
            this.zza = zzbbeVar;
            zzbbeVar.checkAvailabilityAndConnect();
        }
        return zzbbjVar;
    }
}
