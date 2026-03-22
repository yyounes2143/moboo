package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdug extends zzblx {
    final /* synthetic */ Object zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzfhc zzd;
    final /* synthetic */ zzcaf zze;
    final /* synthetic */ zzduh zzf;

    public zzdug(zzduh zzduhVar, Object obj, String str, long j, zzfhc zzfhcVar, zzcaf zzcafVar) {
        this.zza = obj;
        this.zzb = str;
        this.zzc = j;
        this.zzd = zzfhcVar;
        this.zze = zzcafVar;
        this.zzf = zzduhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbly
    public final void zze(String str) {
        zzdso zzdsoVar;
        zzdcx zzdcxVar;
        zzfhq zzfhqVar;
        synchronized (this.zza) {
            zzduh zzduhVar = this.zzf;
            String str2 = this.zzb;
            zzduhVar.zzv(str2, false, str, (int) (com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - this.zzc));
            zzdsoVar = zzduhVar.zzl;
            zzdsoVar.zzb(str2, "error");
            zzdcxVar = zzduhVar.zzo;
            zzdcxVar.zzb(str2, "error");
            zzfhqVar = zzduhVar.zzp;
            zzfhc zzfhcVar = this.zzd;
            zzfhcVar.zzc(str);
            zzfhcVar.zzg(false);
            zzfhqVar.zzc(zzfhcVar.zzm());
            this.zze.zzc(Boolean.FALSE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbly
    public final void zzf() {
        zzdso zzdsoVar;
        zzdcx zzdcxVar;
        zzfhq zzfhqVar;
        synchronized (this.zza) {
            zzduh zzduhVar = this.zzf;
            String str = this.zzb;
            zzduhVar.zzv(str, true, "", (int) (com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - this.zzc));
            zzdsoVar = zzduhVar.zzl;
            zzdsoVar.zzd(str);
            zzdcxVar = zzduhVar.zzo;
            zzdcxVar.zzd(str);
            zzfhqVar = zzduhVar.zzp;
            zzfhc zzfhcVar = this.zzd;
            zzfhcVar.zzg(true);
            zzfhqVar.zzc(zzfhcVar.zzm());
            this.zze.zzc(Boolean.TRUE);
        }
    }
}
