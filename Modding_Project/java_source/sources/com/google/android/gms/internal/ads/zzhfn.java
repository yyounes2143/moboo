package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzhfn {
    public static zzhfn zzb(Class cls) {
        if (System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik")) {
            return new zzhfi(cls.getSimpleName());
        }
        return new zzhfk(cls.getSimpleName());
    }

    public abstract void zza(String str);
}
