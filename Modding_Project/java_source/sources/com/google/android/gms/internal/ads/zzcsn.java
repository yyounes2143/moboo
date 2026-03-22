package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzbca;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcsn implements zzcxh, com.google.android.gms.ads.internal.client.zza, zzcyv, zzcwn, zzcvt, zzdbh {
    private final Clock zza;
    private final zzbzg zzb;

    public zzcsn(Clock clock, zzbzg zzbzgVar) {
        this.zza = clock;
        this.zzb = zzbzgVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        this.zzb.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zza() {
        this.zzb.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdo(zzfcg zzfcgVar) {
        this.zzb.zzk(this.zza.elapsedRealtime());
    }

    public final String zzg() {
        return this.zzb.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void zzi(zzbca.zzb zzbVar) {
        this.zzb.zzi();
    }

    public final void zzk(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        this.zzb.zzj(zzmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void zzm(zzbca.zzb zzbVar) {
        this.zzb.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void zzs() {
        this.zzb.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzt() {
        this.zzb.zzh(true);
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdn(zzbvl zzbvlVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void zzj(zzbca.zzb zzbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void zzl(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void zzn(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzdu(zzbvx zzbvxVar, String str, String str2) {
    }
}
