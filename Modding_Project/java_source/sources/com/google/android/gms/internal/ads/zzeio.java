package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzeio extends zzbpq {
    private final zzcvr zza;
    private final zzddw zzb;
    private final zzcwl zzc;
    private final zzcxa zzd;
    private final zzcxf zze;
    private final zzdau zzf;
    private final zzcxz zzg;
    private final zzdet zzh;
    private final zzdaq zzi;
    private final zzcwg zzj;

    public zzeio(zzcvr zzcvrVar, zzddw zzddwVar, zzcwl zzcwlVar, zzcxa zzcxaVar, zzcxf zzcxfVar, zzdau zzdauVar, zzcxz zzcxzVar, zzdet zzdetVar, zzdaq zzdaqVar, zzcwg zzcwgVar) {
        this.zza = zzcvrVar;
        this.zzb = zzddwVar;
        this.zzc = zzcwlVar;
        this.zzd = zzcxaVar;
        this.zze = zzcxfVar;
        this.zzf = zzdauVar;
        this.zzg = zzcxzVar;
        this.zzh = zzdetVar;
        this.zzi = zzdaqVar;
        this.zzj = zzcwgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zze() {
        this.zza.onAdClicked();
        this.zzb.zzdf();
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzf() {
        this.zzg.zzdw(4);
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    @Deprecated
    public final void zzj(int i) throws RemoteException {
        zzk(new com.google.android.gms.ads.internal.client.zze(i, "", AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzk(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.zzj.zzc(zzfdq.zzc(8, zzeVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzl(String str) {
        zzk(new com.google.android.gms.ads.internal.client.zze(0, str, AdError.UNDEFINED_DOMAIN, null, null));
    }

    public void zzm() {
        this.zzc.zza();
        this.zzi.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzn() {
        this.zzd.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzo() {
        this.zze.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzp() {
        this.zzg.zzdt();
        this.zzi.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzq(String str, String str2) {
        this.zzf.zzb(str, str2);
    }

    public void zzw() {
        this.zzh.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzx() {
        this.zzh.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzy() throws RemoteException {
        this.zzh.zzc();
    }

    public void zzz() {
        this.zzh.zzd();
    }

    public void zzu() throws RemoteException {
    }

    public void zzv() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzg(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzh(com.google.android.gms.ads.internal.client.zze zzeVar) {
    }

    public void zzs(zzbwj zzbwjVar) {
    }

    public void zzt(zzbwn zzbwnVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzi(int i, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzr(zzbha zzbhaVar, String str) {
    }
}
