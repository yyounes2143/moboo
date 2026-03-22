package com.google.android.engage.service;

import android.os.Bundle;
import com.google.android.engage.protocol.IAppEngageServiceAvailableCallback;
import com.google.android.gms.tasks.TaskCompletionSource;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzu extends IAppEngageServiceAvailableCallback.Stub {
    final /* synthetic */ zzaa zza;
    private final TaskCompletionSource zzb;

    public /* synthetic */ zzu(zzaa zzaaVar, TaskCompletionSource taskCompletionSource, zzz zzzVar) {
        Objects.requireNonNull(zzaaVar);
        this.zza = zzaaVar;
        this.zzb = taskCompletionSource;
    }

    @Override // com.google.android.engage.protocol.IAppEngageServiceAvailableCallback
    public final void onIsServiceAvailable(Bundle bundle) {
        com.google.android.gms.internal.engage.zzo zzoVar = this.zza.zzd;
        if (zzoVar != null) {
            zzoVar.zzu(this.zzb);
        }
        this.zzb.trySetResult(bundle);
    }
}
