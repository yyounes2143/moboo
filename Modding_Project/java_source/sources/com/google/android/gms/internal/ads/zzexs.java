package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzexs implements zzcvw, zzcxs, zzezi, com.google.android.gms.ads.internal.overlay.zzr, zzcyf, zzcwj, zzddy {
    private final zzfdy zza;
    private final AtomicReference zzb = new AtomicReference();
    private final AtomicReference zzc = new AtomicReference();
    private final AtomicReference zzd = new AtomicReference();
    private final AtomicReference zze = new AtomicReference();
    private final AtomicReference zzf = new AtomicReference();
    private final AtomicReference zzg = new AtomicReference();
    @Nullable
    private zzexs zzh = null;

    public zzexs(zzfdy zzfdyVar) {
        this.zza = zzfdyVar;
    }

    public static zzexs zzi(zzexs zzexsVar) {
        zzexs zzexsVar2 = new zzexs(zzexsVar.zza);
        zzexsVar2.zzh = zzexsVar;
        return zzexsVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzcvw
    public final void zzdD(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzexs zzexsVar = this.zzh;
        if (zzexsVar != null) {
            zzexsVar.zzdD(zzeVar);
            return;
        }
        AtomicReference atomicReference = this.zzb;
        zzeyz.zza(atomicReference, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexn
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbaq) obj).zzc(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        zzeyz.zza(atomicReference, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexo
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbaq) obj).zzb(com.google.android.gms.ads.internal.client.zze.this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final void zzdf() {
        zzexs zzexsVar = this.zzh;
        if (zzexsVar != null) {
            zzexsVar.zzdf();
        } else {
            zzeyz.zza(this.zzd, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexj
                @Override // com.google.android.gms.internal.ads.zzeyy
                public final void zza(Object obj) {
                    ((zzbau) obj).zzb();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzds() {
        zzexs zzexsVar = this.zzh;
        if (zzexsVar != null) {
            zzexsVar.zzds();
        } else {
            zzeyz.zza(this.zzf, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexg
                @Override // com.google.android.gms.internal.ads.zzeyy
                public final void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.overlay.zzr) obj).zzds();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdt() {
        zzexs zzexsVar = this.zzh;
        if (zzexsVar != null) {
            zzexsVar.zzdt();
            return;
        }
        zzeyz.zza(this.zzf, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexr
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.overlay.zzr) obj).zzdt();
            }
        });
        AtomicReference atomicReference = this.zzd;
        zzeyz.zza(atomicReference, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexe
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbau) obj).zzf();
            }
        });
        zzeyz.zza(atomicReference, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexf
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbau) obj).zze();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
        zzexs zzexsVar = this.zzh;
        if (zzexsVar != null) {
            zzexsVar.zzdv();
        } else {
            zzeyz.zza(this.zzf, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexq
                @Override // com.google.android.gms.internal.ads.zzeyy
                public final void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.overlay.zzr) obj).zzdv();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdw(final int i) {
        zzexs zzexsVar = this.zzh;
        if (zzexsVar != null) {
            zzexsVar.zzdw(i);
        } else {
            zzeyz.zza(this.zzf, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexm
                @Override // com.google.android.gms.internal.ads.zzeyy
                public final void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.overlay.zzr) obj).zzdw(i);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxs
    public final void zzg() {
        zzexs zzexsVar = this.zzh;
        if (zzexsVar != null) {
            zzexsVar.zzg();
        } else {
            zzeyz.zza(this.zze, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexp
                @Override // com.google.android.gms.internal.ads.zzeyy
                public final void zza(Object obj) {
                    ((zzcxs) obj).zzg();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyf
    public final void zzh(final com.google.android.gms.ads.internal.client.zzt zztVar) {
        zzexs zzexsVar = this.zzh;
        if (zzexsVar != null) {
            zzexsVar.zzh(zztVar);
        } else {
            zzeyz.zza(this.zzg, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexd
                @Override // com.google.android.gms.internal.ads.zzeyy
                public final void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.client.zzdq) obj).zze(com.google.android.gms.ads.internal.client.zzt.this);
                }
            });
        }
    }

    public final void zzj() {
        zzexs zzexsVar = this.zzh;
        if (zzexsVar != null) {
            zzexsVar.zzj();
            return;
        }
        this.zza.zza();
        zzeyz.zza(this.zzc, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexk
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbar) obj).zza();
            }
        });
        zzeyz.zza(this.zzd, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexl
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbau) obj).zzc();
            }
        });
    }

    public final void zzk(final zzban zzbanVar) {
        zzexs zzexsVar = this.zzh;
        if (zzexsVar != null) {
            zzexsVar.zzk(zzbanVar);
        } else {
            zzeyz.zza(this.zzb, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexi
                @Override // com.google.android.gms.internal.ads.zzeyy
                public final void zza(Object obj) {
                    ((zzbaq) obj).zzd(zzban.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzezi
    public final void zzl(zzezi zzeziVar) {
        this.zzh = (zzexs) zzeziVar;
    }

    public final void zzm(com.google.android.gms.ads.internal.overlay.zzr zzrVar) {
        this.zzf.set(zzrVar);
    }

    public final void zzn(com.google.android.gms.ads.internal.client.zzdq zzdqVar) {
        this.zzg.set(zzdqVar);
    }

    public final void zzo(zzbaq zzbaqVar) {
        this.zzb.set(zzbaqVar);
    }

    public final void zzp(zzbau zzbauVar) {
        this.zzd.set(zzbauVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcwj
    public final void zzr(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzexs zzexsVar = this.zzh;
        if (zzexsVar != null) {
            zzexsVar.zzr(zzeVar);
        } else {
            zzeyz.zza(this.zzd, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzexh
                @Override // com.google.android.gms.internal.ads.zzeyy
                public final void zza(Object obj) {
                    ((zzbau) obj).zzd(com.google.android.gms.ads.internal.client.zze.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdH() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdk() {
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final void zzu() {
    }
}
