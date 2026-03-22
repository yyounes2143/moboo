package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Key;
import javax.crypto.Mac;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgwk extends ThreadLocal {
    final /* synthetic */ zzgwl zza;

    public zzgwk(zzgwl zzgwlVar) {
        this.zza = zzgwlVar;
    }

    @Override // java.lang.ThreadLocal
    /* renamed from: zza */
    public final Mac initialValue() {
        String str;
        Key key;
        try {
            zzgvx zzgvxVar = zzgvx.zzb;
            zzgwl zzgwlVar = this.zza;
            str = zzgwlVar.zzb;
            Mac mac = (Mac) zzgvxVar.zza(str);
            key = zzgwlVar.zzc;
            mac.init(key);
            return mac;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
