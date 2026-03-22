package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfua implements ServiceConnection {
    final /* synthetic */ zzfuc zza;

    public /* synthetic */ zzfua(zzfuc zzfucVar, zzfub zzfubVar) {
        this.zza = zzfucVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        zzfuc zzfucVar = this.zza;
        zzfuc.zzd(zzfucVar).zzc("LmdServiceConnectionManager.onServiceConnected(%s)", componentName);
        zzfuc.zzl(zzfucVar, new Runnable() { // from class: com.google.android.gms.internal.ads.zzfty
            @Override // java.lang.Runnable
            public final void run() {
                IInterface zzb;
                zzfsc zzb2 = zzfsb.zzb(iBinder);
                zzfua zzfuaVar = zzfua.this;
                zzfuc zzfucVar2 = zzfuaVar.zza;
                zzfuc.zzk(zzfucVar2, zzb2);
                zzfuc.zzd(zzfucVar2).zzc("linkToDeath", new Object[0]);
                try {
                    zzb = zzfuc.zzb(zzfucVar2);
                } catch (RemoteException e) {
                    zzfuc.zzd(zzfuaVar.zza).zzb(e, "linkToDeath failed", new Object[0]);
                }
                if (zzb != null) {
                    zzb.asBinder().linkToDeath(zzfuc.zza(zzfucVar2), 0);
                    zzfuc zzfucVar3 = zzfuaVar.zza;
                    zzfuc.zzj(zzfucVar3, false);
                    synchronized (zzfuc.zze(zzfucVar3)) {
                        try {
                            for (Runnable runnable : zzfuc.zze(zzfucVar3)) {
                                runnable.run();
                            }
                            zzfuc.zze(zzfucVar3).clear();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                }
                throw null;
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzfuc zzfucVar = this.zza;
        zzfuc.zzd(zzfucVar).zzc("LmdServiceConnectionManager.onServiceDisconnected(%s)", componentName);
        zzfuc.zzl(zzfucVar, new Runnable() { // from class: com.google.android.gms.internal.ads.zzftz
            @Override // java.lang.Runnable
            public final void run() {
                zzfuc zzfucVar2 = zzfua.this.zza;
                zzfuc.zzd(zzfucVar2).zzc("unlinkToDeath", new Object[0]);
                IInterface zzb = zzfuc.zzb(zzfucVar2);
                zzb.getClass();
                zzb.asBinder().unlinkToDeath(zzfuc.zza(zzfucVar2), 0);
                zzfuc.zzk(zzfucVar2, null);
                zzfuc.zzj(zzfucVar2, false);
            }
        });
    }
}
