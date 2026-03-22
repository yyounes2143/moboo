package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ShowFirstParty;
/* compiled from: Proguard */
@ShowFirstParty
/* loaded from: classes4.dex */
public final class zzfoi {
    private final Context zza;
    private final Looper zzb;

    public zzfoi(@NonNull Context context, @NonNull Looper looper) {
        this.zza = context;
        this.zzb = looper;
    }

    public final void zza(@NonNull String str) {
        zzfot zza = zzfow.zza();
        Context context = this.zza;
        zza.zza(context.getPackageName());
        zza.zzc(2);
        zzfoq zza2 = zzfos.zza();
        zza2.zza(str);
        zza2.zzb(2);
        zza.zzb(zza2);
        new zzfoj(context, this.zzb, (zzfow) zza.zzbr()).zza();
    }
}
