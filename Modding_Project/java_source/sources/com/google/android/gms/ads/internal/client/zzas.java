package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbpl;
import com.google.android.gms.internal.ads.zzbui;
import com.google.android.gms.internal.ads.zzbuk;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzas extends zzba {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzbpl zzb;
    final /* synthetic */ zzaz zzc;

    public zzas(zzaz zzazVar, Context context, zzbpl zzbplVar) {
        this.zza = context;
        this.zzb = zzbplVar;
        this.zzc = zzazVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    @Nullable
    public final /* bridge */ /* synthetic */ Object zza() {
        zzaz.zzv(this.zza, "ads_preloader");
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object zzb(zzco zzcoVar) throws RemoteException {
        IObjectWrapper wrap = ObjectWrapper.wrap(this.zza);
        zzbpl zzbplVar = this.zzb;
        zzch zzg = zzcoVar.zzg(wrap, zzbplVar, ModuleDescriptor.MODULE_VERSION);
        zzg.zzh(zzbplVar);
        return zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzc() throws RemoteException {
        zzl zzlVar;
        zzbuk zzbukVar;
        zzch zzcfVar;
        Context context = this.zza;
        IObjectWrapper wrap = ObjectWrapper.wrap(context);
        zzbcv.zza(context);
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzkW)).booleanValue()) {
            try {
                zzbpl zzbplVar = this.zzb;
                IBinder zze = ((zzci) com.google.android.gms.ads.internal.util.client.zzs.zzb(context, "com.google.android.gms.ads.ChimeraAdPreloaderCreatorImpl", new com.google.android.gms.ads.internal.util.client.zzq() { // from class: com.google.android.gms.ads.internal.client.zzar
                    @Override // com.google.android.gms.ads.internal.util.client.zzq
                    public final Object zza(Object obj) {
                        IBinder iBinder = (IBinder) obj;
                        if (iBinder == null) {
                            return null;
                        }
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloaderCreator");
                        if (queryLocalInterface instanceof zzci) {
                            return (zzci) queryLocalInterface;
                        }
                        return new zzci(iBinder);
                    }
                })).zze(wrap, zzbplVar, ModuleDescriptor.MODULE_VERSION);
                if (zze == null) {
                    zzcfVar = null;
                } else {
                    IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloader");
                    if (queryLocalInterface instanceof zzch) {
                        zzcfVar = (zzch) queryLocalInterface;
                    } else {
                        zzcfVar = new zzcf(zze);
                    }
                }
                zzcfVar.zzh(zzbplVar);
                return zzcfVar;
            } catch (RemoteException e) {
                e = e;
                zzaz zzazVar = this.zzc;
                zzazVar.zzg = zzbui.zza(this.zza);
                zzbukVar = zzazVar.zzg;
                zzbukVar.zzh(e, "ClientApiBroker.getAdPreloader");
                return null;
            } catch (com.google.android.gms.ads.internal.util.client.zzr e2) {
                e = e2;
                zzaz zzazVar2 = this.zzc;
                zzazVar2.zzg = zzbui.zza(this.zza);
                zzbukVar = zzazVar2.zzg;
                zzbukVar.zzh(e, "ClientApiBroker.getAdPreloader");
                return null;
            } catch (NullPointerException e3) {
                e = e3;
                zzaz zzazVar22 = this.zzc;
                zzazVar22.zzg = zzbui.zza(this.zza);
                zzbukVar = zzazVar22.zzg;
                zzbukVar.zzh(e, "ClientApiBroker.getAdPreloader");
                return null;
            }
        }
        zzaz zzazVar3 = this.zzc;
        Context context2 = this.zza;
        zzbpl zzbplVar2 = this.zzb;
        zzlVar = zzazVar3.zzh;
        return zzlVar.zza(context2, zzbplVar2);
    }
}
