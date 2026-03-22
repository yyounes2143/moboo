package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import java.util.UUID;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzflb {
    public static zzflb zza(zzflc zzflcVar, zzfld zzfldVar) {
        zzfmx.zza();
        return new zzflf(zzflcVar, zzfldVar, UUID.randomUUID().toString());
    }

    public abstract void zzb(View view, zzfli zzfliVar, @Nullable String str);

    public abstract void zzc();

    public abstract void zzd(@Nullable View view);

    public abstract void zze();
}
