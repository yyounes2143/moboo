package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbze {
    public final ListenableFuture zza(Context context, int i) {
        zzcaf zzcafVar = new zzcaf();
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        if (com.google.android.gms.ads.internal.util.client.zzf.zzu(context)) {
            zzcaa.zza.execute(new zzbzd(this, context, zzcafVar));
        }
        return zzcafVar;
    }
}
