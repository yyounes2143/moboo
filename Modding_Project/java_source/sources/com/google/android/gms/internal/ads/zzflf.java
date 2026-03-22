package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzflf extends zzflb {
    private final zzfld zza;
    private zzfno zzc;
    private zzfmn zzd;
    private final String zzg;
    private final zzfmb zzb = new zzfmb();
    private boolean zze = false;
    private boolean zzf = false;

    public zzflf(zzflc zzflcVar, zzfld zzfldVar, String str) {
        this.zza = zzfldVar;
        this.zzg = str;
        zzk(null);
        if (zzfldVar.zzd() != zzfle.HTML && zzfldVar.zzd() != zzfle.JAVASCRIPT) {
            this.zzd = new zzfmr(str, zzfldVar.zzi(), null);
        } else {
            this.zzd = new zzfmo(str, zzfldVar.zza());
        }
        this.zzd.zzo();
        zzflx.zza().zzd(this);
        this.zzd.zzf(zzflcVar);
    }

    private final void zzk(@Nullable View view) {
        this.zzc = new zzfno(view);
    }

    @Override // com.google.android.gms.internal.ads.zzflb
    public final void zzb(View view, zzfli zzfliVar, @Nullable String str) {
        if (this.zzf) {
            return;
        }
        this.zzb.zzb(view, zzfliVar, "Ad overlay");
    }

    @Override // com.google.android.gms.internal.ads.zzflb
    public final void zzc() {
        if (this.zzf) {
            return;
        }
        this.zzc.clear();
        if (!this.zzf) {
            this.zzb.zzc();
        }
        this.zzf = true;
        this.zzd.zze();
        zzflx.zza().zze(this);
        this.zzd.zzc();
        this.zzd = null;
    }

    @Override // com.google.android.gms.internal.ads.zzflb
    public final void zzd(@Nullable View view) {
        if (!this.zzf && zzf() != view) {
            zzk(view);
            this.zzd.zzb();
            Collection<zzflf> zzc = zzflx.zza().zzc();
            if (zzc != null && !zzc.isEmpty()) {
                for (zzflf zzflfVar : zzc) {
                    if (zzflfVar != this && zzflfVar.zzf() == view) {
                        zzflfVar.zzc.clear();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzflb
    public final void zze() {
        if (!this.zze && this.zzd != null) {
            this.zze = true;
            zzflx.zza().zzf(this);
            this.zzd.zzl(zzfmf.zzb().zza());
            this.zzd.zzg(zzflv.zza().zzb());
            this.zzd.zzi(this, this.zza);
        }
    }

    public final View zzf() {
        return (View) this.zzc.get();
    }

    public final zzfmn zzg() {
        return this.zzd;
    }

    public final String zzh() {
        return this.zzg;
    }

    public final List zzi() {
        return this.zzb.zza();
    }

    public final boolean zzj() {
        if (this.zze && !this.zzf) {
            return true;
        }
        return false;
    }
}
