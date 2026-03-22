package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzblt implements zzapn {
    private volatile zzblg zza;
    private final Context zzb;

    public zzblt(Context context) {
        this.zzb = context;
    }

    public static /* bridge */ /* synthetic */ void zzc(zzblt zzbltVar) {
        if (zzbltVar.zza == null) {
            return;
        }
        zzbltVar.zza.disconnect();
        Binder.flushPendingCommands();
    }

    @Override // com.google.android.gms.internal.ads.zzapn
    @Nullable
    public final zzapq zza(zzapu zzapuVar) throws zzaqd {
        Parcelable.Creator<zzblh> creator = zzblh.CREATOR;
        Map zzl = zzapuVar.zzl();
        int size = zzl.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        for (Map.Entry entry : zzl.entrySet()) {
            strArr[i] = (String) entry.getKey();
            strArr2[i] = (String) entry.getValue();
            i++;
        }
        zzblh zzblhVar = new zzblh(zzapuVar.zzk(), strArr, strArr2);
        long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
        try {
            zzcaf zzcafVar = new zzcaf();
            this.zza = new zzblg(this.zzb, com.google.android.gms.ads.internal.zzv.zzv().zzb(), new zzblr(this, zzcafVar), new zzbls(this, zzcafVar));
            this.zza.checkAvailabilityAndConnect();
            zzblp zzblpVar = new zzblp(this, zzblhVar);
            zzgdj zzgdjVar = zzcaa.zza;
            ListenableFuture zzo = zzgcy.zzo(zzgcy.zzn(zzcafVar, zzblpVar, zzgdjVar), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeI)).intValue(), TimeUnit.MILLISECONDS, zzcaa.zzd);
            zzo.addListener(new zzblq(this), zzgdjVar);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzo.get();
            com.google.android.gms.ads.internal.util.zze.zza("Http assets remote cache took " + (com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - elapsedRealtime) + "ms");
            zzblj zzbljVar = (zzblj) new zzbvj(parcelFileDescriptor).zza(zzblj.CREATOR);
            if (zzbljVar == null) {
                return null;
            }
            if (!zzbljVar.zza) {
                String[] strArr3 = zzbljVar.zze;
                String[] strArr4 = zzbljVar.zzf;
                if (strArr3.length != strArr4.length) {
                    return null;
                }
                HashMap hashMap = new HashMap();
                for (int i2 = 0; i2 < strArr3.length; i2++) {
                    hashMap.put(strArr3[i2], strArr4[i2]);
                }
                return new zzapq(zzbljVar.zzc, zzbljVar.zzd, hashMap, zzbljVar.zzg, zzbljVar.zzh);
            }
            throw new zzaqd(zzbljVar.zzb);
        } catch (InterruptedException | ExecutionException unused) {
            com.google.android.gms.ads.internal.util.zze.zza("Http assets remote cache took " + (com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - elapsedRealtime) + "ms");
            return null;
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.zze.zza("Http assets remote cache took " + (com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - elapsedRealtime) + "ms");
            throw th;
        }
    }
}
