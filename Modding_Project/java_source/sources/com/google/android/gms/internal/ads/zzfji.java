package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfji {
    private final com.google.android.gms.ads.internal.util.client.zzx zza;
    private final com.google.android.gms.ads.internal.util.client.zzu zzb;
    private final zzgdk zzc;
    @Nullable
    private final zzfjj zzd;

    public zzfji(com.google.android.gms.ads.internal.util.client.zzx zzxVar, com.google.android.gms.ads.internal.util.client.zzu zzuVar, zzgdk zzgdkVar, @Nullable zzfjj zzfjjVar) {
        this.zza = zzxVar;
        this.zzb = zzuVar;
        this.zzc = zzgdkVar;
        this.zzd = zzfjjVar;
    }

    public static /* synthetic */ ListenableFuture zzc(zzfji zzfjiVar, int i, long j, String str, com.google.android.gms.ads.internal.util.client.zzt zztVar) {
        if (zztVar != com.google.android.gms.ads.internal.util.client.zzt.RETRIABLE_FAILURE) {
            return zzgcy.zzh(zztVar);
        }
        com.google.android.gms.ads.internal.util.client.zzx zzxVar = zzfjiVar.zza;
        long zzb = zzxVar.zzb();
        if (i != 1) {
            zzb = (long) (zzxVar.zza() * j);
        }
        return zzfjiVar.zze(str, zzb, i + 1);
    }

    private final ListenableFuture zze(final String str, final long j, final int i) {
        final String str2;
        com.google.android.gms.ads.internal.util.client.zzx zzxVar = this.zza;
        if (i > zzxVar.zzc()) {
            zzfjj zzfjjVar = this.zzd;
            if (zzfjjVar != null && zzxVar.zzd()) {
                zzfjjVar.zza(str, "", 2);
                return zzgcy.zzh(com.google.android.gms.ads.internal.util.client.zzt.BUFFERED);
            }
            return zzgcy.zzh(com.google.android.gms.ads.internal.util.client.zzt.RETRIABLE_FAILURE);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziQ)).booleanValue()) {
            Uri parse = Uri.parse(str);
            String encodedQuery = parse.getEncodedQuery();
            Uri.Builder clearQuery = parse.buildUpon().clearQuery();
            clearQuery.appendQueryParameter("pa", Integer.toString(i));
            str2 = String.valueOf(clearQuery.build()) + "&" + encodedQuery;
        } else {
            str2 = str;
        }
        zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzfjh
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzfji.zzc(zzfji.this, i, j, str, (com.google.android.gms.ads.internal.util.client.zzt) obj);
            }
        };
        if (j == 0) {
            zzgdk zzgdkVar = this.zzc;
            return zzgcy.zzn(zzgdkVar.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfjg
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    com.google.android.gms.ads.internal.util.client.zzt zza;
                    zza = zzfji.this.zzb.zza(str2);
                    return zza;
                }
            }), zzgcfVar, zzgdkVar);
        }
        zzgdk zzgdkVar2 = this.zzc;
        return zzgcy.zzn(zzgdkVar2.zzc(new Callable() { // from class: com.google.android.gms.internal.ads.zzfjf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                com.google.android.gms.ads.internal.util.client.zzt zza;
                zza = zzfji.this.zzb.zza(str2);
                return zza;
            }
        }, j, TimeUnit.MILLISECONDS), zzgcfVar, zzgdkVar2);
    }

    public final ListenableFuture zzd(String str) {
        try {
            return zze(str, 0L, 1);
        } catch (NullPointerException | RejectedExecutionException unused) {
            return zzgcy.zzh(com.google.android.gms.ads.internal.util.client.zzt.PERMANENT_FAILURE);
        }
    }
}
