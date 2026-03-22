package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfax implements OnAdMetadataChangedListener, zzcxh, zzcvw, zzcvt, zzcwj, zzcyf, zzezi, zzddy {
    private final zzfdy zza;
    private final AtomicReference zzb = new AtomicReference();
    private final AtomicReference zzc = new AtomicReference();
    private final AtomicReference zzd = new AtomicReference();
    private final AtomicReference zze = new AtomicReference();
    private final AtomicReference zzf = new AtomicReference();
    private final AtomicReference zzg = new AtomicReference();
    private final AtomicReference zzh = new AtomicReference();
    private zzfax zzi = null;

    public zzfax(zzfdy zzfdyVar) {
        this.zza = zzfdyVar;
    }

    @Override // com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener
    public final void onAdMetadataChanged() {
        zzfax zzfaxVar = this.zzi;
        if (zzfaxVar != null) {
            zzfaxVar.onAdMetadataChanged();
        } else {
            zzeyz.zza(this.zzb, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfal
                @Override // com.google.android.gms.internal.ads.zzeyy
                public final void zza(Object obj) {
                    ((OnAdMetadataChangedListener) obj).onAdMetadataChanged();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zza() {
        zzfax zzfaxVar = this.zzi;
        if (zzfaxVar != null) {
            zzfaxVar.zza();
            return;
        }
        this.zza.zza();
        zzeyz.zza(this.zzd, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfat
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbwt) obj).zzg();
            }
        });
        zzeyz.zza(this.zze, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfau
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbwd) obj).zzf();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzb() {
        zzfax zzfaxVar = this.zzi;
        if (zzfaxVar != null) {
            zzfaxVar.zzb();
        } else {
            zzeyz.zza(this.zze, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfav
                @Override // com.google.android.gms.internal.ads.zzeyy
                public final void zza(Object obj) {
                    ((zzbwd) obj).zzh();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzc() {
        zzfax zzfaxVar = this.zzi;
        if (zzfaxVar != null) {
            zzfaxVar.zzc();
            return;
        }
        AtomicReference atomicReference = this.zzd;
        zzeyz.zza(atomicReference, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfaf
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbwt) obj).zzj();
            }
        });
        zzeyz.zza(this.zze, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfag
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbwd) obj).zzj();
            }
        });
        zzeyz.zza(atomicReference, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfah
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbwt) obj).zzf();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvw
    public final void zzdD(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfax zzfaxVar = this.zzi;
        if (zzfaxVar != null) {
            zzfaxVar.zzdD(zzeVar);
            return;
        }
        final int i = zzeVar.zza;
        AtomicReference atomicReference = this.zzc;
        zzeyz.zza(atomicReference, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfaq
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbwx) obj).zzf(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        zzeyz.zza(atomicReference, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfar
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbwx) obj).zze(i);
            }
        });
        zzeyz.zza(this.zze, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfas
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbwd) obj).zzg(i);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final void zzdf() {
        zzfax zzfaxVar = this.zzi;
        if (zzfaxVar != null) {
            zzfaxVar.zzdf();
        } else {
            zzeyz.zza(this.zzd, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfam
                @Override // com.google.android.gms.internal.ads.zzeyy
                public final void zza(Object obj) {
                    ((zzbwt) obj).zze();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzdu(final zzbvx zzbvxVar, final String str, final String str2) {
        zzfax zzfaxVar = this.zzi;
        if (zzfaxVar != null) {
            zzfaxVar.zzdu(zzbvxVar, str, str2);
            return;
        }
        zzeyz.zza(this.zzd, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfaw
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                zzbvx zzbvxVar2 = zzbvx.this;
                ((zzbwt) obj).zzk(new zzbxh(zzbvxVar2.zzc(), zzbvxVar2.zzb()));
            }
        });
        zzeyz.zza(this.zzf, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfac
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                zzbvx zzbvxVar2 = zzbvx.this;
                ((zzbwy) obj).zze(new zzbxh(zzbvxVar2.zzc(), zzbvxVar2.zzb()), str, str2);
            }
        });
        zzeyz.zza(this.zze, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfad
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbwd) obj).zze(zzbvx.this);
            }
        });
        zzeyz.zza(this.zzg, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfae
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbvy) obj).zze(zzbvx.this, str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zze() {
        zzfax zzfaxVar = this.zzi;
        if (zzfaxVar != null) {
            zzfaxVar.zze();
        } else {
            zzeyz.zza(this.zze, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfap
                @Override // com.google.android.gms.internal.ads.zzeyy
                public final void zza(Object obj) {
                    ((zzbwd) obj).zzk();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzf() {
        zzfax zzfaxVar = this.zzi;
        if (zzfaxVar != null) {
            zzfaxVar.zzf();
        } else {
            zzeyz.zza(this.zze, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfab
                @Override // com.google.android.gms.internal.ads.zzeyy
                public final void zza(Object obj) {
                    ((zzbwd) obj).zzl();
                }
            });
        }
    }

    public final void zzg(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.zzb.set(onAdMetadataChangedListener);
    }

    @Override // com.google.android.gms.internal.ads.zzcyf
    public final void zzh(@NonNull final com.google.android.gms.ads.internal.client.zzt zztVar) {
        zzfax zzfaxVar = this.zzi;
        if (zzfaxVar != null) {
            zzfaxVar.zzh(zztVar);
        } else {
            zzeyz.zza(this.zzh, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfai
                @Override // com.google.android.gms.internal.ads.zzeyy
                public final void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.client.zzdq) obj).zze(com.google.android.gms.ads.internal.client.zzt.this);
                }
            });
        }
    }

    public final void zzi(com.google.android.gms.ads.internal.client.zzdq zzdqVar) {
        this.zzh.set(zzdqVar);
    }

    public final void zzj(zzbwt zzbwtVar) {
        this.zzd.set(zzbwtVar);
    }

    public final void zzk(zzbwx zzbwxVar) {
        this.zzc.set(zzbwxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzezi
    public final void zzl(zzezi zzeziVar) {
        this.zzi = (zzfax) zzeziVar;
    }

    @Deprecated
    public final void zzm(zzbwd zzbwdVar) {
        this.zze.set(zzbwdVar);
    }

    @Deprecated
    public final void zzn(zzbvy zzbvyVar) {
        this.zzg.set(zzbvyVar);
    }

    public final void zzo(zzbwy zzbwyVar) {
        this.zzf.set(zzbwyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcwj
    public final void zzr(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfax zzfaxVar = this.zzi;
        if (zzfaxVar != null) {
            zzfaxVar.zzr(zzeVar);
            return;
        }
        AtomicReference atomicReference = this.zzd;
        zzeyz.zza(atomicReference, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfan
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbwt) obj).zzi(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        zzeyz.zza(atomicReference, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfao
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbwt) obj).zzh(com.google.android.gms.ads.internal.client.zze.this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzt() {
        zzfax zzfaxVar = this.zzi;
        if (zzfaxVar != null) {
            zzfaxVar.zzt();
            return;
        }
        zzeyz.zza(this.zzc, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfaj
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbwx) obj).zzg();
            }
        });
        zzeyz.zza(this.zze, new zzeyy() { // from class: com.google.android.gms.internal.ads.zzfak
            @Override // com.google.android.gms.internal.ads.zzeyy
            public final void zza(Object obj) {
                ((zzbwd) obj).zzi();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final void zzu() {
    }
}
