package com.google.android.engage.service;

import android.os.Bundle;
import com.google.android.engage.protocol.IAppEngageServiceDeleteClustersCallback;
import com.google.android.gms.tasks.TaskCompletionSource;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzv extends IAppEngageServiceDeleteClustersCallback.Stub {
    final /* synthetic */ zzaa zza;
    private final TaskCompletionSource zzb;

    public /* synthetic */ zzv(zzaa zzaaVar, TaskCompletionSource taskCompletionSource, zzz zzzVar) {
        Objects.requireNonNull(zzaaVar);
        this.zza = zzaaVar;
        this.zzb = taskCompletionSource;
    }

    @Override // com.google.android.engage.protocol.IAppEngageServiceDeleteClustersCallback
    public final void onDeleteClusters(Bundle bundle) {
        com.google.android.gms.internal.engage.zzo zzoVar = this.zza.zzd;
        if (zzoVar != null) {
            zzoVar.zzu(this.zzb);
        }
        this.zzb.trySetResult(bundle);
    }
}
