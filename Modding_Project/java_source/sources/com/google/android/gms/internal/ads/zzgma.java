package com.google.android.gms.internal.ads;

import j$.util.concurrent.ConcurrentHashMap;
import java.security.GeneralSecurityException;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgma {
    private static final Logger zza = Logger.getLogger(zzgma.class.getName());
    private static final zzgma zzb = new zzgma();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final ConcurrentMap zzd = new ConcurrentHashMap();

    public static zzgma zzc() {
        return zzb;
    }

    private final synchronized zzgel zzg(String str) throws GeneralSecurityException {
        ConcurrentMap concurrentMap;
        concurrentMap = this.zzc;
        if (concurrentMap.containsKey(str)) {
        } else {
            throw new GeneralSecurityException("No key manager found for key type " + str + ", see https://developers.google.com/tink/faq/registration_errors");
        }
        return (zzgel) concurrentMap.get(str);
    }

    private final synchronized void zzh(zzgel zzgelVar, boolean z, boolean z2) throws GeneralSecurityException {
        try {
            String str = ((zzgmk) zzgelVar).zza;
            ConcurrentMap concurrentMap = this.zzd;
            if (concurrentMap.containsKey(str) && !((Boolean) concurrentMap.get(str)).booleanValue()) {
                throw new GeneralSecurityException("New keys are already disallowed for key type ".concat(str));
            }
            ConcurrentMap concurrentMap2 = this.zzc;
            zzgel zzgelVar2 = (zzgel) concurrentMap2.get(str);
            if (zzgelVar2 != null && !zzgelVar2.getClass().equals(zzgelVar.getClass())) {
                zza.logp(Level.WARNING, "com.google.crypto.tink.internal.KeyManagerRegistry", "insertKeyManager", "Attempted overwrite of a registered key manager for key type ".concat(str));
                throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, zzgelVar2.getClass().getName(), zzgelVar.getClass().getName()));
            }
            concurrentMap2.putIfAbsent(str, zzgelVar);
            concurrentMap.put(str, Boolean.TRUE);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final zzgel zza(String str, Class cls) throws GeneralSecurityException {
        zzgel zzg = zzg(str);
        if (zzg.zzb().equals(cls)) {
            return zzg;
        }
        String name = cls.getName();
        String valueOf = String.valueOf(zzg.getClass());
        String obj = zzg.zzb().toString();
        throw new GeneralSecurityException("Primitive type " + name + " not supported by key manager of type " + valueOf + ", which only supports: " + obj);
    }

    public final zzgel zzb(String str) throws GeneralSecurityException {
        return zzg(str);
    }

    public final synchronized void zzd(zzgel zzgelVar, boolean z) throws GeneralSecurityException {
        zzf(zzgelVar, 1, true);
    }

    public final boolean zze(String str) {
        return ((Boolean) this.zzd.get(str)).booleanValue();
    }

    public final synchronized void zzf(zzgel zzgelVar, int i, boolean z) throws GeneralSecurityException {
        if (zzglr.zza(i)) {
            zzh(zzgelVar, false, true);
        } else {
            throw new GeneralSecurityException("Cannot register key manager: FIPS compatibility insufficient");
        }
    }
}
