package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdah implements AppEventListener, OnAdMetadataChangedListener, zzcvt, com.google.android.gms.ads.internal.client.zza, zzcyf, zzcwn, zzcxs, com.google.android.gms.ads.internal.overlay.zzr, zzcwj, zzddy {
    private final zzdae zza = new zzdae(this, null);
    @Nullable
    private zzekr zzb;
    @Nullable
    private zzekv zzc;
    @Nullable
    private zzexs zzd;
    @Nullable
    private zzfax zze;

    private static void zzn(Object obj, zzdaf zzdafVar) {
        if (obj != null) {
            zzdafVar.zza(obj);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzn(this.zzb, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzcyx
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzekr) obj).onAdClicked();
            }
        });
        zzn(this.zzc, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzcyy
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzekv) obj).onAdClicked();
            }
        });
    }

    @Override // com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener
    public final void onAdMetadataChanged() {
        zzn(this.zze, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczd
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzfax) obj).onAdMetadataChanged();
            }
        });
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final void onAppEvent(final String str, final String str2) {
        zzn(this.zzb, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczj
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzekr) obj).onAppEvent(str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zza() {
        zzn(this.zzb, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzdac
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzekr) obj).zza();
            }
        });
        zzn(this.zze, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzdad
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzfax) obj).zza();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzb() {
        zzn(this.zzb, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczv
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzekr) obj).zzb();
            }
        });
        zzn(this.zze, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczw
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzfax) obj).zzb();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzc() {
        zzn(this.zzb, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzcze
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzekr) obj).zzc();
            }
        });
        zzn(this.zze, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczf
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzfax) obj).zzc();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdH() {
        zzn(this.zzd, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczq
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                zzexs zzexsVar = (zzexs) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final void zzdf() {
        zzn(this.zzb, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczs
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzekr) obj).zzdf();
            }
        });
        zzn(this.zzc, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczx
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzekv) obj).zzdf();
            }
        });
        zzn(this.zze, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczy
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzfax) obj).zzdf();
            }
        });
        zzn(this.zzd, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczz
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzexs) obj).zzdf();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdk() {
        zzn(this.zzd, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczc
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                zzexs zzexsVar = (zzexs) obj;
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzds() {
        zzn(this.zzd, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczp
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzexs) obj).zzds();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdt() {
        zzn(this.zzd, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczl
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzexs) obj).zzdt();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzdu(final zzbvx zzbvxVar, final String str, final String str2) {
        zzn(this.zzb, new zzdaf(zzbvxVar, str, str2) { // from class: com.google.android.gms.internal.ads.zzczg
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                zzekr zzekrVar = (zzekr) obj;
            }
        });
        zzn(this.zze, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczi
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzfax) obj).zzdu(zzbvx.this, str, str2);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
        zzn(this.zzd, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczr
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzexs) obj).zzdv();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdw(final int i) {
        zzn(this.zzd, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczt
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzexs) obj).zzdw(i);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zze() {
        zzn(this.zzb, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzcyw
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                zzekr zzekrVar = (zzekr) obj;
            }
        });
        zzn(this.zze, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczh
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzfax) obj).zze();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzf() {
        zzn(this.zzb, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzcyz
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                zzekr zzekrVar = (zzekr) obj;
            }
        });
        zzn(this.zze, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzcza
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzfax) obj).zzf();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcxs
    public final void zzg() {
        zzn(this.zzd, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczu
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzexs) obj).zzg();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcyf
    public final void zzh(final com.google.android.gms.ads.internal.client.zzt zztVar) {
        zzn(this.zzb, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczm
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzekr) obj).zzh(com.google.android.gms.ads.internal.client.zzt.this);
            }
        });
        zzn(this.zze, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczn
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzfax) obj).zzh(com.google.android.gms.ads.internal.client.zzt.this);
            }
        });
        zzn(this.zzd, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczo
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzexs) obj).zzh(com.google.android.gms.ads.internal.client.zzt.this);
            }
        });
    }

    public final zzdae zzi() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcwj
    public final void zzr(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzn(this.zze, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzdaa
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzfax) obj).zzr(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        zzn(this.zzb, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzdab
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzekr) obj).zzr(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void zzs() {
        zzn(this.zzb, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczb
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzekr) obj).zzs();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final void zzu() {
        zzn(this.zzb, new zzdaf() { // from class: com.google.android.gms.internal.ads.zzczk
            @Override // com.google.android.gms.internal.ads.zzdaf
            public final void zza(Object obj) {
                ((zzekr) obj).zzu();
            }
        });
    }
}
