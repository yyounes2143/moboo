package com.google.android.engage.service;

import android.os.RemoteException;
import com.google.android.engage.protocol.IAppEngageService;
import com.google.android.gms.tasks.TaskCompletionSource;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzt extends com.google.android.gms.internal.engage.zze {
    final /* synthetic */ zzy zza;
    final /* synthetic */ TaskCompletionSource zzb;
    final /* synthetic */ zzaa zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzt(zzaa zzaaVar, TaskCompletionSource taskCompletionSource, zzy zzyVar, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.zza = zzyVar;
        this.zzb = taskCompletionSource2;
        Objects.requireNonNull(zzaaVar);
        this.zzc = zzaaVar;
    }

    @Override // com.google.android.gms.internal.engage.zze
    public final void zza() {
        try {
            IAppEngageService iAppEngageService = (IAppEngageService) this.zzc.zzd.zze();
            if (iAppEngageService != null) {
                this.zza.zza(iAppEngageService, this.zzb);
            } else {
                this.zzb.trySetException(new AppEngageException(2));
            }
        } catch (RemoteException unused) {
            this.zzb.trySetException(new AppEngageException(3));
        }
    }
}
