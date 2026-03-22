package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcvo {
    @Nullable
    public static final zzbxv zza(Context context, VersionInfoParcel versionInfoParcel, zzfbu zzfbuVar, zzbxr zzbxrVar) {
        zzbxs zzbxsVar = zzfbuVar.zzA;
        String str = null;
        if (zzbxsVar == null) {
            return null;
        }
        zzfbz zzfbzVar = zzfbuVar.zzs;
        if (zzfbzVar != null) {
            str = zzfbzVar.zzb;
        }
        return new zzbxq(context, versionInfoParcel, zzbxsVar, str, zzbxrVar);
    }
}
