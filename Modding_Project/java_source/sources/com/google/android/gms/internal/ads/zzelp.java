package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.core.content.ContextCompat;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzelp implements zzetv {
    private final Context zza;

    public zzelp(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        boolean z;
        if (ContextCompat.checkSelfPermission(this.zza, "com.google.android.gms.permission.AD_ID") == 0) {
            z = true;
        } else {
            z = false;
        }
        return zzgcy.zzh(new zzelq(z));
    }
}
