package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfru extends zzfrs {
    private static zzfru zzd;

    private zzfru(Context context) {
        super(context, "paidv2_id", "paidv2_creation_time", "PaidV2LifecycleImpl");
    }

    public static final zzfru zzi(Context context) {
        zzfru zzfruVar;
        synchronized (zzfru.class) {
            try {
                if (zzd == null) {
                    zzd = new zzfru(context);
                }
                zzfruVar = zzd;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfruVar;
    }

    public final zzfrp zzh(long j, boolean z) throws IOException {
        synchronized (zzfru.class) {
            try {
                if (!this.zzc.zzd()) {
                    return new zzfrp();
                }
                return zzb(null, null, j, z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzj() throws IOException {
        synchronized (zzfru.class) {
            try {
                if (zzg(false)) {
                    zzf(false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
