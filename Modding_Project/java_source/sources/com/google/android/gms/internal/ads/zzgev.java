package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgev {
    private static final CopyOnWriteArrayList zza = new CopyOnWriteArrayList();

    public static zzgeu zza(String str) throws GeneralSecurityException {
        Iterator it = zza.iterator();
        while (it.hasNext()) {
            zzgeu zzgeuVar = (zzgeu) it.next();
            if (zzgeuVar.zza()) {
                return zzgeuVar;
            }
        }
        throw new GeneralSecurityException("No KMS client does support: ".concat(String.valueOf(str)));
    }
}
