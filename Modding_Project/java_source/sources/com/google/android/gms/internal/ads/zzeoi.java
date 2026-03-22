package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Strings;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeoi implements zzetv {
    @Nullable
    private final zzeys zza;

    public zzeoi(@Nullable zzeys zzeysVar) {
        this.zza = zzeysVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 15;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        zzeys zzeysVar = this.zza;
        if (zzeysVar == null) {
            return zzgcy.zzh(new zzeoh(null));
        }
        String zza = zzeysVar.zza();
        if (Strings.isEmptyOrWhitespace(zza)) {
            return zzgcy.zzh(new zzeoh(null));
        }
        return zzgcy.zzh(new zzeoh(zza));
    }
}
