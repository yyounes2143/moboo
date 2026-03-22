package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import j$.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhy {
    private final zzfvu zza;
    private final Handler zzb;
    @Nullable
    private zzhx zzc;
    @Nullable
    private zze zzd;
    private int zzf;
    private zzch zzh;
    private float zzg = 1.0f;
    private int zze = 0;

    public zzhy(final Context context, Looper looper, zzhx zzhxVar) {
        this.zza = zzfvy.zza(new zzfvu() { // from class: com.google.android.gms.internal.ads.zzhw
            @Override // com.google.android.gms.internal.ads.zzfvu
            public final Object zza() {
                return zzcj.zzc(context);
            }
        });
        this.zzc = zzhxVar;
        this.zzb = new Handler(looper);
    }

    public static /* synthetic */ void zzc(zzhy zzhyVar, int i) {
        if (i != -3 && i != -2) {
            if (i != -1) {
                if (i != 1) {
                    zzdx.zzf("AudioFocusManager", "Unknown focus change type: " + i);
                    return;
                }
                zzhyVar.zzh(2);
                zzhyVar.zzg(1);
                return;
            }
            zzhyVar.zzg(-1);
            zzhyVar.zzf();
            zzhyVar.zzh(1);
        } else if (i != -2) {
            zzhyVar.zzh(4);
        } else {
            zzhyVar.zzg(0);
            zzhyVar.zzh(3);
        }
    }

    private final void zzf() {
        int i = this.zze;
        if (i != 1 && i != 0 && this.zzh != null) {
            zzcj.zza((AudioManager) this.zza.zza(), this.zzh);
        }
    }

    private final void zzg(int i) {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            zzhxVar.zza(i);
        }
    }

    private final void zzh(int i) {
        float f;
        if (this.zze != i) {
            this.zze = i;
            if (i == 4) {
                f = 0.2f;
            } else {
                f = 1.0f;
            }
            if (this.zzg != f) {
                this.zzg = f;
                zzhx zzhxVar = this.zzc;
                if (zzhxVar != null) {
                    zzhxVar.zzb(f);
                }
            }
        }
    }

    public final float zza() {
        return this.zzg;
    }

    public final int zzb(boolean z, int i) {
        if (i != 1 && this.zzf == 1) {
            if (z) {
                if (this.zze == 2) {
                    return 1;
                }
                if (this.zzh == null) {
                    zzce zzceVar = new zzce(1);
                    zze zzeVar = this.zzd;
                    zzeVar.getClass();
                    zzceVar.zza(zzeVar);
                    zzceVar.zzb(new AudioManager.OnAudioFocusChangeListener() { // from class: com.google.android.gms.internal.ads.zzhv
                        @Override // android.media.AudioManager.OnAudioFocusChangeListener
                        public final void onAudioFocusChange(int i2) {
                            zzhy.zzc(zzhy.this, i2);
                        }
                    }, this.zzb);
                    this.zzh = zzceVar.zzc();
                }
                if (zzcj.zzb((AudioManager) this.zza.zza(), this.zzh) == 1) {
                    zzh(2);
                    return 1;
                }
                zzh(1);
                return -1;
            }
            int i2 = this.zze;
            if (i2 == 1) {
                return -1;
            }
            if (i2 == 3) {
                return 0;
            }
            return 1;
        }
        zzf();
        zzh(0);
        return 1;
    }

    public final void zzd() {
        this.zzc = null;
        zzf();
        zzh(0);
    }

    public final void zze(@Nullable zze zzeVar) {
        int i;
        if (!Objects.equals(this.zzd, zzeVar)) {
            this.zzd = zzeVar;
            if (zzeVar == null) {
                i = 0;
            } else {
                i = 1;
            }
            this.zzf = i;
        }
    }
}
