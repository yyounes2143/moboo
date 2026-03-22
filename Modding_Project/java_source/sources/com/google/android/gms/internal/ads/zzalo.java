package com.google.android.gms.internal.ads;

import android.text.Layout;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzalo {
    @Nullable
    private String zza;
    private int zzb;
    private boolean zzc;
    private int zzd;
    private boolean zze;
    private float zzk;
    @Nullable
    private String zzl;
    @Nullable
    private Layout.Alignment zzo;
    @Nullable
    private Layout.Alignment zzp;
    @Nullable
    private zzalh zzr;
    @Nullable
    private String zzt;
    @Nullable
    private String zzu;
    private int zzf = -1;
    private int zzg = -1;
    private int zzh = -1;
    private int zzi = -1;
    private int zzj = -1;
    private int zzm = -1;
    private int zzn = -1;
    private int zzq = -1;
    private float zzs = Float.MAX_VALUE;

    public final zzalo zzA(float f) {
        this.zzs = f;
        return this;
    }

    public final zzalo zzB(@Nullable Layout.Alignment alignment) {
        this.zzo = alignment;
        return this;
    }

    public final zzalo zzC(boolean z) {
        this.zzq = z ? 1 : 0;
        return this;
    }

    public final zzalo zzD(@Nullable zzalh zzalhVar) {
        this.zzr = zzalhVar;
        return this;
    }

    public final zzalo zzE(boolean z) {
        this.zzg = z ? 1 : 0;
        return this;
    }

    @Nullable
    public final String zzF() {
        return this.zzu;
    }

    @Nullable
    public final String zzG() {
        return this.zza;
    }

    @Nullable
    public final String zzH() {
        return this.zzl;
    }

    @Nullable
    public final String zzI() {
        return this.zzt;
    }

    public final boolean zzJ() {
        if (this.zzq == 1) {
            return true;
        }
        return false;
    }

    public final boolean zzK() {
        return this.zze;
    }

    public final boolean zzL() {
        return this.zzc;
    }

    public final boolean zzM() {
        if (this.zzf == 1) {
            return true;
        }
        return false;
    }

    public final boolean zzN() {
        if (this.zzg == 1) {
            return true;
        }
        return false;
    }

    public final float zza() {
        return this.zzk;
    }

    public final float zzb() {
        return this.zzs;
    }

    public final int zzc() {
        if (this.zze) {
            return this.zzd;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public final int zzd() {
        if (this.zzc) {
            return this.zzb;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public final int zze() {
        return this.zzj;
    }

    public final int zzf() {
        return this.zzn;
    }

    public final int zzg() {
        return this.zzm;
    }

    public final int zzh() {
        int i;
        int i2 = this.zzh;
        if (i2 == -1 && this.zzi == -1) {
            return -1;
        }
        int i3 = 0;
        if (i2 == 1) {
            i = 1;
        } else {
            i = 0;
        }
        if (this.zzi == 1) {
            i3 = 2;
        }
        return i | i3;
    }

    @Nullable
    public final Layout.Alignment zzi() {
        return this.zzp;
    }

    @Nullable
    public final Layout.Alignment zzj() {
        return this.zzo;
    }

    @Nullable
    public final zzalh zzk() {
        return this.zzr;
    }

    public final zzalo zzl(@Nullable zzalo zzaloVar) {
        int i;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (zzaloVar != null) {
            if (!this.zzc && zzaloVar.zzc) {
                zzp(zzaloVar.zzb);
            }
            if (this.zzh == -1) {
                this.zzh = zzaloVar.zzh;
            }
            if (this.zzi == -1) {
                this.zzi = zzaloVar.zzi;
            }
            if (this.zza == null && (str = zzaloVar.zza) != null) {
                this.zza = str;
            }
            if (this.zzf == -1) {
                this.zzf = zzaloVar.zzf;
            }
            if (this.zzg == -1) {
                this.zzg = zzaloVar.zzg;
            }
            if (this.zzn == -1) {
                this.zzn = zzaloVar.zzn;
            }
            if (this.zzo == null && (alignment2 = zzaloVar.zzo) != null) {
                this.zzo = alignment2;
            }
            if (this.zzp == null && (alignment = zzaloVar.zzp) != null) {
                this.zzp = alignment;
            }
            if (this.zzq == -1) {
                this.zzq = zzaloVar.zzq;
            }
            if (this.zzj == -1) {
                this.zzj = zzaloVar.zzj;
                this.zzk = zzaloVar.zzk;
            }
            if (this.zzr == null) {
                this.zzr = zzaloVar.zzr;
            }
            if (this.zzs == Float.MAX_VALUE) {
                this.zzs = zzaloVar.zzs;
            }
            if (this.zzt == null) {
                this.zzt = zzaloVar.zzt;
            }
            if (this.zzu == null) {
                this.zzu = zzaloVar.zzu;
            }
            if (!this.zze && zzaloVar.zze) {
                zzm(zzaloVar.zzd);
            }
            if (this.zzm == -1 && (i = zzaloVar.zzm) != -1) {
                this.zzm = i;
            }
        }
        return this;
    }

    public final zzalo zzm(int i) {
        this.zzd = i;
        this.zze = true;
        return this;
    }

    public final zzalo zzn(boolean z) {
        this.zzh = z ? 1 : 0;
        return this;
    }

    public final zzalo zzo(@Nullable String str) {
        this.zzu = str;
        return this;
    }

    public final zzalo zzp(int i) {
        this.zzb = i;
        this.zzc = true;
        return this;
    }

    public final zzalo zzq(@Nullable String str) {
        this.zza = str;
        return this;
    }

    public final zzalo zzr(float f) {
        this.zzk = f;
        return this;
    }

    public final zzalo zzs(int i) {
        this.zzj = i;
        return this;
    }

    public final zzalo zzt(@Nullable String str) {
        this.zzl = str;
        return this;
    }

    public final zzalo zzu(boolean z) {
        this.zzi = z ? 1 : 0;
        return this;
    }

    public final zzalo zzv(boolean z) {
        this.zzf = z ? 1 : 0;
        return this;
    }

    public final zzalo zzw(@Nullable Layout.Alignment alignment) {
        this.zzp = alignment;
        return this;
    }

    public final zzalo zzx(@Nullable String str) {
        this.zzt = str;
        return this;
    }

    public final zzalo zzy(int i) {
        this.zzn = i;
        return this;
    }

    public final zzalo zzz(int i) {
        this.zzm = i;
        return this;
    }
}
