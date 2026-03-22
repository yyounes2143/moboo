package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzemy implements zzetv {
    private final Context zza;
    private final zzgdj zzb;

    public zzemy(zzgdj zzgdjVar, Context context) {
        this.zzb = zzgdjVar;
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 61;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznd)).booleanValue()) {
            return zzgcy.zzh(new zzemz(null, false));
        }
        final ContentResolver contentResolver = this.zza.getContentResolver();
        if (contentResolver == null) {
            return zzgcy.zzh(new zzemz(null, false));
        }
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzemx
            @Override // java.util.concurrent.Callable
            public final Object call() {
                ContentResolver contentResolver2 = contentResolver;
                String string = Settings.Secure.getString(contentResolver2, "advertising_id");
                boolean z = false;
                if (Settings.Secure.getInt(contentResolver2, "limit_ad_tracking", 0) == 1) {
                    z = true;
                }
                return new zzemz(string, z);
            }
        });
    }
}
