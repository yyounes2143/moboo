package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzffe {
    private final zzfex zza;
    private final ListenableFuture zzb;
    private boolean zzc = false;
    private boolean zzd = false;

    public zzffe(final zzfec zzfecVar, final zzfew zzfewVar, final zzfex zzfexVar) {
        this.zza = zzfexVar;
        this.zzb = zzgcy.zzf(zzgcy.zzn(zzfewVar.zza(zzfexVar), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzffc
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzffe.zzb(zzffe.this, zzfewVar, zzfecVar, zzfexVar, (zzfel) obj);
            }
        }, zzfexVar.zzb()), Exception.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzffd
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzffe.zza(zzffe.this, zzfewVar, (Exception) obj);
            }
        }, zzfexVar.zzb());
    }

    public static /* synthetic */ ListenableFuture zza(zzffe zzffeVar, zzfew zzfewVar, Exception exc) {
        synchronized (zzffeVar) {
            zzffeVar.zzd = true;
            throw exc;
        }
    }

    public static /* synthetic */ ListenableFuture zzb(zzffe zzffeVar, zzfew zzfewVar, zzfec zzfecVar, zzfex zzfexVar, zzfel zzfelVar) {
        synchronized (zzffeVar) {
            try {
                zzffeVar.zzd = true;
                zzfewVar.zzb(zzfelVar);
                if (!zzffeVar.zzc) {
                    zzfecVar.zzd(zzfexVar.zza(), zzfelVar);
                    return zzgcy.zzh(null);
                }
                return zzgcy.zzh(new zzfev(zzfelVar, zzfexVar));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized ListenableFuture zzc(zzfex zzfexVar) {
        if (!this.zzd && !this.zzc) {
            zzfex zzfexVar2 = this.zza;
            if (zzfexVar2.zza() != null && zzfexVar.zza() != null && zzfexVar2.zza().equals(zzfexVar.zza())) {
                this.zzc = true;
                return this.zzb;
            }
        }
        return null;
    }

    public final synchronized void zzd(zzgcu zzgcuVar) {
        zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzffb
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                zzfev zzfevVar = (zzfev) obj;
                return zzgcy.zzi();
            }
        };
        zzfex zzfexVar = this.zza;
        zzgcy.zzr(zzgcy.zzn(this.zzb, zzgcfVar, zzfexVar.zzb()), zzgcuVar, zzfexVar.zzb());
    }
}
