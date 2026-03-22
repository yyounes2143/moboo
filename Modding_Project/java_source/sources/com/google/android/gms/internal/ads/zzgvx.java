package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgvx {
    public static final zzgvx zza = new zzgvx(new zzgvy());
    public static final zzgvx zzb = new zzgvx(new zzgwc());
    private final zzgvv zzc;

    static {
        new zzgvx(new zzgwe());
        new zzgvx(new zzgwd());
        new zzgvx(new zzgvz());
        new zzgvx(new zzgwb());
        new zzgvx(new zzgwa());
    }

    public zzgvx(zzgwf zzgwfVar) {
        zzgvv zzgvuVar;
        if (!zzgls.zzb()) {
            if ("The Android Project".equals(System.getProperty("java.vendor"))) {
                zzgvuVar = new zzgvs(zzgwfVar, null);
            } else {
                zzgvuVar = new zzgvt(zzgwfVar, null);
            }
        } else {
            zzgvuVar = new zzgvu(zzgwfVar, null);
        }
        this.zzc = zzgvuVar;
    }

    public static List zzb(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                arrayList.add(provider);
            }
        }
        return arrayList;
    }

    public final Object zza(String str) throws GeneralSecurityException {
        return this.zzc.zza(str);
    }
}
