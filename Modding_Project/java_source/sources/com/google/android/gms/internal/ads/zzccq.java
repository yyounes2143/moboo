package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzccq implements zzgg {
    private final Context zza;
    private final zzgg zzb;
    private final String zzc;
    private final int zzd;
    private final boolean zze;
    private InputStream zzf;
    private boolean zzg;
    private Uri zzh;
    private volatile zzbbf zzi;
    private boolean zzj = false;
    private boolean zzk = false;
    private zzgl zzl;

    public zzccq(Context context, zzgg zzggVar, String str, int i, zzhg zzhgVar, zzccp zzccpVar) {
        this.zza = context;
        this.zzb = zzggVar;
        this.zzc = str;
        this.zzd = i;
        new AtomicLong(-1L);
        this.zze = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcc)).booleanValue();
    }

    private final boolean zzg() {
        if (!this.zze) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeD)).booleanValue() && !this.zzj) {
            return true;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeE)).booleanValue() || this.zzk) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        if (this.zzg) {
            InputStream inputStream = this.zzf;
            if (inputStream != null) {
                return inputStream.read(bArr, i, i2);
            }
            return this.zzb.zza(bArr, i, i2);
        }
        throw new IOException("Attempt to read closed CacheDataSource.");
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final long zzb(zzgl zzglVar) throws IOException {
        Long l;
        if (!this.zzg) {
            this.zzg = true;
            Uri uri = zzglVar.zza;
            this.zzh = uri;
            this.zzl = zzglVar;
            this.zzi = zzbbf.zza(uri);
            zzbbc zzbbcVar = null;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeA)).booleanValue()) {
                if (this.zzi != null) {
                    this.zzi.zzh = zzglVar.zze;
                    this.zzi.zzi = zzfvt.zzc(this.zzc);
                    this.zzi.zzj = this.zzd;
                    if (this.zzi.zzg) {
                        l = (Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeC);
                    } else {
                        l = (Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeB);
                    }
                    long longValue = l.longValue();
                    com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
                    com.google.android.gms.ads.internal.zzv.zzd();
                    Future zza = zzbbq.zza(this.zza, this.zzi);
                    try {
                        try {
                            zzbbr zzbbrVar = (zzbbr) zza.get(longValue, TimeUnit.MILLISECONDS);
                            zzbbrVar.zzd();
                            this.zzj = zzbbrVar.zzf();
                            this.zzk = zzbbrVar.zze();
                            zzbbrVar.zza();
                            if (!zzg()) {
                                this.zzf = zzbbrVar.zzc();
                            }
                        } catch (InterruptedException unused) {
                            zza.cancel(false);
                            Thread.currentThread().interrupt();
                        } catch (ExecutionException | TimeoutException unused2) {
                            zza.cancel(false);
                        }
                    } catch (Throwable unused3) {
                    }
                    com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
                    throw null;
                }
            } else {
                if (this.zzi != null) {
                    this.zzi.zzh = zzglVar.zze;
                    this.zzi.zzi = zzfvt.zzc(this.zzc);
                    this.zzi.zzj = this.zzd;
                    zzbbcVar = com.google.android.gms.ads.internal.zzv.zzc().zzb(this.zzi);
                }
                if (zzbbcVar != null && zzbbcVar.zze()) {
                    this.zzj = zzbbcVar.zzg();
                    this.zzk = zzbbcVar.zzf();
                    if (!zzg()) {
                        this.zzf = zzbbcVar.zzc();
                        return -1L;
                    }
                }
            }
            if (this.zzi != null) {
                zzgj zza2 = zzglVar.zza();
                zza2.zzd(Uri.parse(this.zzi.zza));
                this.zzl = zza2.zze();
            }
            return this.zzb.zzb(this.zzl);
        }
        throw new IOException("Attempt to open an already open CacheDataSource.");
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final Uri zzc() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final void zzd() throws IOException {
        if (this.zzg) {
            this.zzg = false;
            this.zzh = null;
            InputStream inputStream = this.zzf;
            if (inputStream != null) {
                IOUtils.closeQuietly(inputStream);
                this.zzf = null;
                return;
            }
            this.zzb.zzd();
            return;
        }
        throw new IOException("Attempt to close an already closed CacheDataSource.");
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final /* synthetic */ Map zze() {
        return Collections.EMPTY_MAP;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final void zzf(zzhg zzhgVar) {
    }
}
