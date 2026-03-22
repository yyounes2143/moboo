package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeju extends com.google.android.gms.ads.internal.client.zzbs {
    @VisibleForTesting
    final zzfcn zza;
    @VisibleForTesting
    final zzdix zzb;
    private final Context zzc;
    private final zzchb zzd;
    private com.google.android.gms.ads.internal.client.zzbk zze;

    public zzeju(zzchb zzchbVar, Context context, String str) {
        zzfcn zzfcnVar = new zzfcn();
        this.zza = zzfcnVar;
        this.zzb = new zzdix();
        this.zzd = zzchbVar;
        zzfcnVar.zzt(str);
        this.zzc = context;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final com.google.android.gms.ads.internal.client.zzbq zze() {
        zzdiz zzg = this.zzb.zzg();
        ArrayList zzi = zzg.zzi();
        zzfcn zzfcnVar = this.zza;
        zzfcnVar.zzE(zzi);
        zzfcnVar.zzF(zzg.zzh());
        if (zzfcnVar.zzh() == null) {
            zzfcnVar.zzs(com.google.android.gms.ads.internal.client.zzr.zzc());
        }
        return new zzejv(this.zzc, this.zzd, zzfcnVar, zzg, this.zze);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzf(zzbhe zzbheVar) {
        this.zzb.zza(zzbheVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzg(zzbhh zzbhhVar) {
        this.zzb.zzb(zzbhhVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzh(String str, zzbhn zzbhnVar, @Nullable zzbhk zzbhkVar) {
        this.zzb.zzc(str, zzbhnVar, zzbhkVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzi(zzbmp zzbmpVar) {
        this.zzb.zzd(zzbmpVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzj(zzbhr zzbhrVar, com.google.android.gms.ads.internal.client.zzr zzrVar) {
        this.zzb.zze(zzbhrVar);
        this.zza.zzs(zzrVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzk(zzbhu zzbhuVar) {
        this.zzb.zzf(zzbhuVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzl(com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        this.zze = zzbkVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzm(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.zza.zzr(adManagerAdViewOptions);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzn(zzbmg zzbmgVar) {
        this.zza.zzw(zzbmgVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzo(zzbfv zzbfvVar) {
        this.zza.zzD(zzbfvVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzp(PublisherAdViewOptions publisherAdViewOptions) {
        this.zza.zzG(publisherAdViewOptions);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzq(com.google.android.gms.ads.internal.client.zzcp zzcpVar) {
        this.zza.zzV(zzcpVar);
    }
}
