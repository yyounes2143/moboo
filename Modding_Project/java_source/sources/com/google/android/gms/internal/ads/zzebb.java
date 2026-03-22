package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.internal.ads.zzbca;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzebb implements zzfgu {
    private final zzeap zza;
    private final zzeat zzb;

    public zzebb(zzeap zzeapVar, zzeat zzeatVar) {
        this.zza = zzeapVar;
        this.zzb = zzeatVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzd(zzfgn zzfgnVar, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgs)).booleanValue() && zzfgn.RENDERER == zzfgnVar) {
            zzeap zzeapVar = this.zza;
            if (zzeapVar.zzc() != 0) {
                zzeapVar.zzf(com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - zzeapVar.zzc());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzdF(zzfgn zzfgnVar, String str, Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgs)).booleanValue() && zzfgn.RENDERER == zzfgnVar) {
            zzeap zzeapVar = this.zza;
            if (zzeapVar.zzc() != 0) {
                zzeapVar.zzf(com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - zzeapVar.zzc());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzdG(zzfgn zzfgnVar, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgs)).booleanValue()) {
            if (zzfgn.RENDERER == zzfgnVar) {
                this.zza.zzg(com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime());
            } else if (zzfgn.PRELOADED_LOADER != zzfgnVar && zzfgn.SERVER_TRANSACTION != zzfgnVar) {
            } else {
                zzeap zzeapVar = this.zza;
                zzeapVar.zzh(com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime());
                final zzeat zzeatVar = this.zzb;
                final long zzd = zzeapVar.zzd();
                zzeatVar.zza.zza(new zzffx() { // from class: com.google.android.gms.internal.ads.zzeas
                    @Override // com.google.android.gms.internal.ads.zzffx
                    public final Object zza(Object obj) {
                        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                        if (!zzeat.this.zzf()) {
                            long j = zzd;
                            zzbca.zzaf.zza.C0042zza zzn = zzbca.zzaf.zza.zzn();
                            zzn.zzP(j);
                            byte[] zzaV = zzn.zzbr().zzaV();
                            zzeba.zzf(sQLiteDatabase, false, false);
                            zzeba.zzc(sQLiteDatabase, j, zzaV);
                            return null;
                        }
                        return null;
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzdE(zzfgn zzfgnVar, String str) {
    }
}
