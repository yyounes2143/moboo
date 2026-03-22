package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbpl;
import com.google.android.gms.internal.ads.zzbui;
import com.google.android.gms.internal.ads.zzbuk;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaq extends zzba {
    final /* synthetic */ Context zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzbpl zzc;
    final /* synthetic */ zzaz zzd;

    public zzaq(zzaz zzazVar, Context context, String str, zzbpl zzbplVar) {
        this.zza = context;
        this.zzb = str;
        this.zzc = zzbplVar;
        this.zzd = zzazVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object zza() {
        zzaz.zzv(this.zza, "native_ad");
        return new zzfe();
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object zzb(zzco zzcoVar) throws RemoteException {
        return zzcoVar.zzb(ObjectWrapper.wrap(this.zza), this.zzb, this.zzc, ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzc() throws RemoteException {
        zzi zziVar;
        zzbuk zzbukVar;
        Context context = this.zza;
        zzbcv.zza(context);
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzkW)).booleanValue()) {
            try {
                IBinder zze = ((zzbu) com.google.android.gms.ads.internal.util.client.zzs.zzb(context, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl", new com.google.android.gms.ads.internal.util.client.zzq() { // from class: com.google.android.gms.ads.internal.client.zzap
                    @Override // com.google.android.gms.ads.internal.util.client.zzq
                    public final Object zza(Object obj) {
                        IBinder iBinder = (IBinder) obj;
                        if (iBinder == null) {
                            return null;
                        }
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
                        if (queryLocalInterface instanceof zzbu) {
                            return (zzbu) queryLocalInterface;
                        }
                        return new zzbu(iBinder);
                    }
                })).zze(ObjectWrapper.wrap(context), this.zzb, this.zzc, ModuleDescriptor.MODULE_VERSION);
                if (zze == null) {
                    return null;
                }
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                if (queryLocalInterface instanceof zzbt) {
                    return (zzbt) queryLocalInterface;
                }
                return new zzbr(zze);
            } catch (RemoteException e) {
                e = e;
                zzaz zzazVar = this.zzd;
                zzazVar.zzg = zzbui.zza(this.zza);
                zzbukVar = zzazVar.zzg;
                zzbukVar.zzh(e, "ClientApiBroker.createAdLoaderBuilder");
                return null;
            } catch (com.google.android.gms.ads.internal.util.client.zzr e2) {
                e = e2;
                zzaz zzazVar2 = this.zzd;
                zzazVar2.zzg = zzbui.zza(this.zza);
                zzbukVar = zzazVar2.zzg;
                zzbukVar.zzh(e, "ClientApiBroker.createAdLoaderBuilder");
                return null;
            } catch (NullPointerException e3) {
                e = e3;
                zzaz zzazVar22 = this.zzd;
                zzazVar22.zzg = zzbui.zza(this.zza);
                zzbukVar = zzazVar22.zzg;
                zzbukVar.zzh(e, "ClientApiBroker.createAdLoaderBuilder");
                return null;
            }
        }
        zzaz zzazVar3 = this.zzd;
        Context context2 = this.zza;
        String str = this.zzb;
        zzbpl zzbplVar = this.zzc;
        zziVar = zzazVar3.zzb;
        return zziVar.zza(context2, str, zzbplVar);
    }
}
