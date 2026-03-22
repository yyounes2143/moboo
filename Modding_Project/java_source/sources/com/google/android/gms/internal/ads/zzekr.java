package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.admanager.AppEventListener;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzekr implements AppEventListener, zzcyv, zzcxh, zzcvw, zzcwn, com.google.android.gms.ads.internal.client.zza, zzcvt, zzcyf, zzcwj, zzddy {
    @Nullable
    final zzdsd zza;
    private final AtomicReference zzc = new AtomicReference();
    private final AtomicReference zzd = new AtomicReference();
    private final AtomicReference zze = new AtomicReference();
    private final AtomicReference zzf = new AtomicReference();
    private final AtomicReference zzg = new AtomicReference();
    private final AtomicBoolean zzh = new AtomicBoolean(true);
    private final AtomicBoolean zzi = new AtomicBoolean(false);
    private final AtomicBoolean zzj = new AtomicBoolean(false);
    @VisibleForTesting
    final BlockingQueue zzb = new ArrayBlockingQueue(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjf)).intValue());

    public zzekr(@Nullable zzdsd zzdsdVar) {
        this.zza = zzdsdVar;
    }

    private final void zzo() {
        if (this.zzi.get() && this.zzj.get()) {
            BlockingQueue<Pair> blockingQueue = this.zzb;
            for (final Pair pair : blockingQueue) {
                zzeyz.zza(this.zzd, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzekc
                    @Override // com.google.android.gms.internal.ads.zzeyy
                    public final void zza(Object obj) {
                        Pair pair2 = pair;
                        ((com.google.android.gms.ads.internal.client.zzcl) obj).zzc((String) pair2.first, (String) pair2.second);
                    }
                });
            }
            blockingQueue.clear();
            this.zzh.set(false);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzla)).booleanValue()) {
            zzeyz.zza(this.zzc, new zzekp());
        }
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final synchronized void onAppEvent(final String str, final String str2) {
        if (this.zzh.get()) {
            if (!this.zzb.offer(new Pair(str, str2))) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zze("The queue for app events is full, dropping the new event.");
                zzdsd zzdsdVar = this.zza;
                if (zzdsdVar != null) {
                    zzdsc zza = zzdsdVar.zza();
                    zza.zzb("action", "dae_action");
                    zza.zzb("dae_name", str);
                    zza.zzb("dae_data", str2);
                    zza.zzj();
                    return;
                }
            }
            return;
        }
        zzeyz.zza(this.zzd, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzekj
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzcl) obj).zzc(str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zza() {
        zzeyz.zza(this.zzc, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzejz
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzd();
            }
        });
        zzeyz.zza(this.zzg, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzeka
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzcs) obj).zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzb() {
        zzeyz.zza(this.zzc, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzekk
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzh();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzc() {
        zzeyz.zza(this.zzc, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzekm
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzj();
            }
        });
        zzeyy zzeyyVar = new zzeyy() { // from class: com.google.android.gms.internal.ads.zzekn
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzcs) obj).zzf();
            }
        };
        AtomicReference atomicReference = this.zzg;
        zzeyz.zza(atomicReference, zzeyyVar);
        zzeyz.zza(atomicReference, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzeko
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzcs) obj).zze();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvw
    public final void zzdD(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzeyy zzeyyVar = new zzeyy() { // from class: com.google.android.gms.internal.ads.zzekd
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzf(com.google.android.gms.ads.internal.client.zze.this);
            }
        };
        AtomicReference atomicReference = this.zzc;
        zzeyz.zza(atomicReference, zzeyyVar);
        zzeyz.zza(atomicReference, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzeke
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zze(com.google.android.gms.ads.internal.client.zze.this.zza);
            }
        });
        zzeyz.zza(this.zzf, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzekf
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbn) obj).zzb(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        this.zzh.set(false);
        this.zzb.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final void zzdf() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzla)).booleanValue()) {
            zzeyz.zza(this.zzc, new zzekp());
        }
        zzeyz.zza(this.zzg, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzekb
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzcs) obj).zzb();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdo(zzfcg zzfcgVar) {
        this.zzh.set(true);
        this.zzj.set(false);
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzbk zzg() {
        return (com.google.android.gms.ads.internal.client.zzbk) this.zzc.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcyf
    public final void zzh(@NonNull final com.google.android.gms.ads.internal.client.zzt zztVar) {
        zzeyz.zza(this.zze, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzekq
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzdq) obj).zze(com.google.android.gms.ads.internal.client.zzt.this);
            }
        });
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzcl zzi() {
        return (com.google.android.gms.ads.internal.client.zzcl) this.zzd.get();
    }

    public final void zzj(com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        this.zzc.set(zzbkVar);
    }

    public final void zzk(com.google.android.gms.ads.internal.client.zzbn zzbnVar) {
        this.zzf.set(zzbnVar);
    }

    public final void zzl(com.google.android.gms.ads.internal.client.zzdq zzdqVar) {
        this.zze.set(zzdqVar);
    }

    public final void zzm(com.google.android.gms.ads.internal.client.zzcl zzclVar) {
        this.zzd.set(zzclVar);
        this.zzi.set(true);
        zzo();
    }

    public final void zzn(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        this.zzg.set(zzcsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcwj
    public final void zzr(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzeyz.zza(this.zzg, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzeki
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzcs) obj).zzd(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void zzs() {
        zzeyz.zza(this.zzc, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzejy
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzg();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final synchronized void zzt() {
        zzeyz.zza(this.zzc, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzekg
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzi();
            }
        });
        zzeyz.zza(this.zzf, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzekh
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbn) obj).zzc();
            }
        });
        this.zzj.set(true);
        zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final void zzu() {
        zzeyz.zza(this.zzc, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzekl
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzk();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdn(zzbvl zzbvlVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzdu(zzbvx zzbvxVar, String str, String str2) {
    }
}
