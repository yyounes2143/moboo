package com.google.android.gms.internal.ads;

import java.io.File;
import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzavb implements zzfpq {
    final /* synthetic */ zzfns zza;

    public zzavb(zzavd zzavdVar, zzfns zzfnsVar) {
        this.zza = zzfnsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfpq
    public final boolean zza(File file) {
        try {
            return this.zza.zza(file);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }
}
