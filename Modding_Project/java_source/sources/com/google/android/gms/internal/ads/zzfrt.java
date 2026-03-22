package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfrt extends zzfrs {
    private static zzfrt zzd;

    private zzfrt(Context context) {
        super(context, "paidv1_id", "paidv1_creation_time", "PaidV1LifecycleImpl");
    }

    public static final zzfrt zzj(Context context) {
        zzfrt zzfrtVar;
        synchronized (zzfrt.class) {
            try {
                if (zzd == null) {
                    zzd = new zzfrt(context);
                }
                zzfrtVar = zzd;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfrtVar;
    }

    public final zzfrp zzh(long j, boolean z) throws IOException {
        zzfrp zzb;
        synchronized (zzfrt.class) {
            zzb = zzb(null, null, j, z);
        }
        return zzb;
    }

    public final zzfrp zzi(String str, String str2, long j, boolean z) throws IOException {
        zzfrp zzb;
        synchronized (zzfrt.class) {
            zzb = zzb(str, str2, j, z);
        }
        return zzb;
    }

    public final void zzk() throws IOException {
        synchronized (zzfrt.class) {
            zzf(false);
        }
    }

    public final void zzl() throws IOException {
        synchronized (zzfrt.class) {
            zzf(true);
        }
    }
}
