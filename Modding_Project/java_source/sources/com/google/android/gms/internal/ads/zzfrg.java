package com.google.android.gms.internal.ads;

import android.net.Network;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfrg extends zzfqu {
    private zzfvu<Integer> zza;
    private zzfvu<Integer> zzb;
    @Nullable
    private zzfrf zzc;
    @Nullable
    private HttpURLConnection zzd;

    public zzfrg(zzfvu<Integer> zzfvuVar, zzfvu<Integer> zzfvuVar2, @Nullable zzfrf zzfrfVar) {
        this.zza = zzfvuVar;
        this.zzb = zzfvuVar2;
        this.zzc = zzfrfVar;
    }

    public static /* synthetic */ Integer zzf() {
        return -1;
    }

    public static /* synthetic */ Integer zzg() {
        return -1;
    }

    public static /* synthetic */ URLConnection zzp(URL url) throws IOException {
        int i = zzfqp.zzb;
        return url.openConnection();
    }

    public static void zzs(@Nullable HttpURLConnection httpURLConnection) {
        zzfqv.zza();
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        zzs(this.zzd);
    }

    public HttpURLConnection zzm() throws IOException {
        zzfqv.zzb(((Integer) this.zza.zza()).intValue(), ((Integer) this.zzb.zza()).intValue());
        zzfrf zzfrfVar = this.zzc;
        zzfrfVar.getClass();
        HttpURLConnection httpURLConnection = (HttpURLConnection) zzfrfVar.zza();
        this.zzd = httpURLConnection;
        return httpURLConnection;
    }

    public HttpURLConnection zzn(zzfrf zzfrfVar, final int i, final int i2) throws IOException {
        this.zza = new zzfvu() { // from class: com.google.android.gms.internal.ads.zzfqy
            @Override // com.google.android.gms.internal.ads.zzfvu
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        };
        this.zzb = new zzfvu() { // from class: com.google.android.gms.internal.ads.zzfqz
            @Override // com.google.android.gms.internal.ads.zzfvu
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i2);
                return valueOf;
            }
        };
        this.zzc = zzfrfVar;
        return zzm();
    }

    @RequiresApi(21)
    public HttpURLConnection zzo(@NonNull final Network network, @NonNull final URL url, final int i, final int i2) throws IOException {
        this.zza = new zzfvu() { // from class: com.google.android.gms.internal.ads.zzfra
            @Override // com.google.android.gms.internal.ads.zzfvu
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        };
        this.zzb = new zzfvu() { // from class: com.google.android.gms.internal.ads.zzfrb
            @Override // com.google.android.gms.internal.ads.zzfvu
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i2);
                return valueOf;
            }
        };
        this.zzc = new zzfrf() { // from class: com.google.android.gms.internal.ads.zzfrc
            @Override // com.google.android.gms.internal.ads.zzfrf
            public final URLConnection zza() {
                URLConnection openConnection;
                openConnection = network.openConnection(url);
                return openConnection;
            }
        };
        return zzm();
    }

    public URLConnection zzr(@NonNull final URL url, final int i) throws IOException {
        this.zza = new zzfvu() { // from class: com.google.android.gms.internal.ads.zzfrd
            @Override // com.google.android.gms.internal.ads.zzfvu
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        };
        this.zzc = new zzfrf() { // from class: com.google.android.gms.internal.ads.zzfre
            @Override // com.google.android.gms.internal.ads.zzfrf
            public final URLConnection zza() {
                return zzfrg.zzp(url);
            }
        };
        return zzm();
    }

    public zzfrg() {
        this(new zzfvu() { // from class: com.google.android.gms.internal.ads.zzfqw
            @Override // com.google.android.gms.internal.ads.zzfvu
            public final Object zza() {
                return zzfrg.zzf();
            }
        }, new zzfvu() { // from class: com.google.android.gms.internal.ads.zzfqx
            @Override // com.google.android.gms.internal.ads.zzfvu
            public final Object zza() {
                return zzfrg.zzg();
            }
        }, null);
    }
}
