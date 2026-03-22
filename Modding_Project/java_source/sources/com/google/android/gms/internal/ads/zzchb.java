package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzchb implements zzcla {
    @Nullable
    private static zzchb zza;

    private static synchronized zzchb zzE(Context context, @Nullable zzbpl zzbplVar, int i, boolean z, int i2, zzcih zzcihVar) {
        synchronized (zzchb.class) {
            try {
                zzchb zzchbVar = zza;
                if (zzchbVar != null) {
                    return zzchbVar;
                }
                long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
                zzbcv.zza(context);
                if (((Boolean) zzben.zze.zze()).booleanValue()) {
                    zzbcf.zzd(context);
                }
                zzfdl zzd = zzfdl.zzd(context);
                VersionInfoParcel zzc = zzd.zzc(ModuleDescriptor.MODULE_VERSION, false, i2);
                zzd.zzf(zzbplVar);
                zzciw zzciwVar = new zzciw(null);
                zzchc zzchcVar = new zzchc();
                zzchcVar.zzf(zzc);
                zzchcVar.zze(context);
                zzchcVar.zzd(currentTimeMillis);
                zzciwVar.zzb(new zzche(zzchcVar, null));
                zzciwVar.zzc(new zzcjq(zzcihVar));
                zzchb zza2 = zzciwVar.zza();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznH)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzv.zzq().zzb(zzffn.zzc(), zza2.zzi());
                    com.google.android.gms.ads.internal.zzv.zzq().zzc();
                }
                com.google.android.gms.ads.internal.zzv.zzp().zzu(context, zzc);
                com.google.android.gms.ads.internal.zzv.zzc().zzi(context);
                com.google.android.gms.ads.internal.zzv.zzr().zzm(context);
                com.google.android.gms.ads.internal.zzv.zzr().zzl(context);
                com.google.android.gms.ads.internal.util.zzd.zza(context);
                com.google.android.gms.ads.internal.zzv.zzb().zzd(context);
                com.google.android.gms.ads.internal.zzv.zzx().zzb(context);
                ((com.google.android.gms.ads.internal.util.zzcb) ((zzcil) zza2).zzai.zzb()).zzc();
                zzbyk.zzb(context);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgs)).booleanValue()) {
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaM)).booleanValue()) {
                        new zzebg(context, zzc, new zzbbt(new zzbbz(context)), new zzeal(new zzeah(context), (zzgdj) ((zzcil) zza2).zzd.zzb())).zzb(com.google.android.gms.ads.internal.zzv.zzp().zzi().zzN());
                    }
                }
                zza = zza2;
                return zza2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static zzchb zza(Context context, @Nullable zzbpl zzbplVar, int i) {
        return zzE(context, zzbplVar, ModuleDescriptor.MODULE_VERSION, false, i, new zzcih());
    }

    public abstract Executor zzA();

    public abstract ScheduledExecutorService zzB();

    public abstract zzbzc zzC();

    @Override // com.google.android.gms.internal.ads.zzcla
    public final zzbzc zzD() {
        return zzC();
    }

    public abstract zzckb zzb();

    public abstract zzcoc zzc();

    public abstract zzcpt zzd();

    public abstract zzcyq zze();

    public abstract zzdfz zzf();

    public abstract zzdgv zzg();

    public abstract zzdol zzh();

    public abstract zzdsd zzi();

    public abstract zzdtn zzj();

    public abstract zzdvc zzk();

    public abstract zzdvz zzl();

    public abstract zzece zzm();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzv zzn();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzab zzo();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzau zzp();

    @Override // com.google.android.gms.internal.ads.zzcla
    public final zzeuy zzq(zzbvl zzbvlVar, int i) {
        return zzr(new zzewb(zzbvlVar, i));
    }

    public abstract zzeuy zzr(zzewb zzewbVar);

    public abstract zzewu zzs();

    public abstract zzeyi zzt();

    public abstract zzezz zzu();

    public abstract zzfbn zzv();

    public abstract zzfde zzw();

    public abstract zzfdo zzx();

    public abstract zzfhq zzy();

    public abstract zzfka zzz();
}
