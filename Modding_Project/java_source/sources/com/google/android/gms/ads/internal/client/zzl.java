package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbpl;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzl extends RemoteCreator {
    public zzl() {
        super("com.google.android.gms.ads.AdPreloaderRemoteCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloaderCreator");
        if (queryLocalInterface instanceof zzci) {
            return (zzci) queryLocalInterface;
        }
        return new zzci(iBinder);
    }

    @Nullable
    public final zzch zza(Context context, zzbpl zzbplVar) {
        zzch zzcfVar;
        try {
            IBinder zze = ((zzci) getRemoteCreatorInstance(context)).zze(ObjectWrapper.wrap(context), zzbplVar, ModuleDescriptor.MODULE_VERSION);
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
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not get remote AdPreloaderCreator.", e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            e = e2;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not get remote AdPreloaderCreator.", e);
            return null;
        }
    }
}
