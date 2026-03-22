package com.google.android.gms.internal.auth;

import android.accounts.Account;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzad extends zzah {
    final /* synthetic */ zzae zza;

    public zzad(zzae zzaeVar) {
        this.zza = zzaeVar;
    }

    @Override // com.google.android.gms.internal.auth.zzah, com.google.android.gms.auth.account.zzb
    public final void zzb(@Nullable Account account) {
        Status status;
        zzae zzaeVar = this.zza;
        if (account == null) {
            status = zzal.zza;
        } else {
            status = Status.RESULT_SUCCESS;
        }
        zzaeVar.setResult((zzae) new zzai(status, account));
    }
}
