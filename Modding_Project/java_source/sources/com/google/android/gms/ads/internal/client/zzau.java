package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbui;
import com.google.android.gms.internal.ads.zzbuk;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzau extends zzba {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzaz zzb;

    public zzau(zzaz zzazVar, Context context) {
        this.zza = context;
        this.zzb = zzazVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object zza() {
        zzaz.zzv(this.zza, "mobile_ads_settings");
        return new zzfi();
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object zzb(zzco zzcoVar) throws RemoteException {
        return zzcoVar.zzh(ObjectWrapper.wrap(this.zza), ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzc() throws RemoteException {
        zzfa zzfaVar;
        zzbuk zzbukVar;
        Context context = this.zza;
        zzbcv.zza(context);
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzkW)).booleanValue()) {
            try {
                IBinder zze = ((zzcz) com.google.android.gms.ads.internal.util.client.zzs.zzb(context, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl", new com.google.android.gms.ads.internal.util.client.zzq() { // from class: com.google.android.gms.ads.internal.client.zzat
                    @Override // com.google.android.gms.ads.internal.util.client.zzq
                    public final Object zza(Object obj) {
                        IBinder iBinder = (IBinder) obj;
                        if (iBinder == null) {
                            return null;
                        }
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
                        if (queryLocalInterface instanceof zzcz) {
                            return (zzcz) queryLocalInterface;
                        }
                        return new zzcz(iBinder);
                    }
                })).zze(ObjectWrapper.wrap(context), ModuleDescriptor.MODULE_VERSION);
                if (zze == null) {
                    return null;
                }
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
                if (queryLocalInterface instanceof zzcy) {
                    return (zzcy) queryLocalInterface;
                }
                return new zzcw(zze);
            } catch (RemoteException e) {
                e = e;
                zzaz zzazVar = this.zzb;
                zzazVar.zzg = zzbui.zza(this.zza);
                zzbukVar = zzazVar.zzg;
                zzbukVar.zzh(e, "ClientApiBroker.getMobileAdsSettingsManager");
                return null;
            } catch (com.google.android.gms.ads.internal.util.client.zzr e2) {
                e = e2;
                zzaz zzazVar2 = this.zzb;
                zzazVar2.zzg = zzbui.zza(this.zza);
                zzbukVar = zzazVar2.zzg;
                zzbukVar.zzh(e, "ClientApiBroker.getMobileAdsSettingsManager");
                return null;
            } catch (NullPointerException e3) {
                e = e3;
                zzaz zzazVar22 = this.zzb;
                zzazVar22.zzg = zzbui.zza(this.zza);
                zzbukVar = zzazVar22.zzg;
                zzbukVar.zzh(e, "ClientApiBroker.getMobileAdsSettingsManager");
                return null;
            }
        }
        zzaz zzazVar3 = this.zzb;
        Context context2 = this.zza;
        zzfaVar = zzazVar3.zzc;
        return zzfaVar.zza(context2);
    }
}
