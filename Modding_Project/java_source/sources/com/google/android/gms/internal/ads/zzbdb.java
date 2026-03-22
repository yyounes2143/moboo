package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes4.dex */
public final class zzbdb {
    public static final void zza(zzbda zzbdaVar, @Nullable zzbcy zzbcyVar) {
        if (zzbcyVar.zza() != null) {
            if (!TextUtils.isEmpty(zzbcyVar.zzb())) {
                zzbdaVar.zzd(zzbcyVar.zza(), zzbcyVar.zzb(), zzbcyVar.zzc(), zzbcyVar.zzd());
                return;
            }
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
    }
}
