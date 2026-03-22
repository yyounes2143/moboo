package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzboe {
    private final Object zza = new Object();
    private final Object zzb = new Object();
    private zzbon zzc;
    private zzbon zzd;

    private static final Context zzc(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            return context;
        }
        return applicationContext;
    }

    public final zzbon zza(Context context, VersionInfoParcel versionInfoParcel, @Nullable zzfhq zzfhqVar) {
        zzbon zzbonVar;
        String str;
        synchronized (this.zza) {
            try {
                if (this.zzc == null) {
                    if (((Boolean) zzbfb.zzf.zze()).booleanValue()) {
                        str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zza);
                    } else {
                        str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzb);
                    }
                    this.zzc = new zzbon(zzc(context), versionInfoParcel, str, zzfhqVar);
                }
                zzbonVar = this.zzc;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbonVar;
    }

    public final zzbon zzb(Context context, VersionInfoParcel versionInfoParcel, zzfhq zzfhqVar) {
        zzbon zzbonVar;
        synchronized (this.zzb) {
            try {
                if (this.zzd == null) {
                    this.zzd = new zzbon(zzc(context), versionInfoParcel, (String) zzbff.zza.zze(), zzfhqVar);
                }
                zzbonVar = this.zzd;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbonVar;
    }
}
