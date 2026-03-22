package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfrv {
    private static zzfrv zzb;
    final zzfrr zza;

    private zzfrv(Context context) {
        this.zza = zzfrr.zzb(context);
        zzfrq.zza(context);
    }

    public static final zzfrv zza(Context context) {
        zzfrv zzfrvVar;
        synchronized (zzfrv.class) {
            try {
                if (zzb == null) {
                    zzb = new zzfrv(context);
                }
                zzfrvVar = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfrvVar;
    }

    public final void zzb(@Nullable zzfrp zzfrpVar) throws IOException {
        synchronized (zzfrv.class) {
            zzfrr zzfrrVar = this.zza;
            zzfrrVar.zze("vendor_scoped_gpid_v2_id");
            zzfrrVar.zze("vendor_scoped_gpid_v2_creation_time");
        }
    }
}
