package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfrq {
    private static zzfrq zzb;
    final zzfrr zza;

    private zzfrq(Context context) {
        this.zza = zzfrr.zzb(context);
    }

    public static final zzfrq zza(Context context) {
        zzfrq zzfrqVar;
        synchronized (zzfrq.class) {
            try {
                if (zzb == null) {
                    zzb = new zzfrq(context);
                }
                zzfrqVar = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfrqVar;
    }

    public final void zzb(boolean z) throws IOException {
        synchronized (zzfrq.class) {
            this.zza.zzd("paidv2_user_option", Boolean.valueOf(z));
        }
    }

    public final void zzc(boolean z) throws IOException {
        synchronized (zzfrq.class) {
            try {
                zzfrr zzfrrVar = this.zza;
                zzfrrVar.zzd("paidv2_publisher_option", Boolean.valueOf(z));
                if (!z) {
                    zzfrrVar.zze("paidv2_creation_time");
                    zzfrrVar.zze("paidv2_id");
                    zzfrrVar.zze("vendor_scoped_gpid_v2_id");
                    zzfrrVar.zze("vendor_scoped_gpid_v2_creation_time");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzd() {
        boolean zzf;
        synchronized (zzfrq.class) {
            zzf = this.zza.zzf("paidv2_publisher_option", true);
        }
        return zzf;
    }

    public final boolean zze() {
        boolean zzf;
        synchronized (zzfrq.class) {
            zzf = this.zza.zzf("paidv2_user_option", true);
        }
        return zzf;
    }
}
