package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media3.common.PlaybackException;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfpt {
    private static final HashMap zza = new HashMap();
    private final Context zzb;
    private final zzfpu zzc;
    private final zzfnx zzd;
    private final zzfns zze;
    @Nullable
    private zzfpi zzf;
    private final Object zzg = new Object();

    public zzfpt(@NonNull Context context, @NonNull zzfpu zzfpuVar, @NonNull zzfnx zzfnxVar, @NonNull zzfns zzfnsVar, boolean z) {
        this.zzb = context;
        this.zzc = zzfpuVar;
        this.zzd = zzfnxVar;
        this.zze = zzfnsVar;
    }

    private final synchronized Class zzd(@NonNull zzfpj zzfpjVar) throws zzfps {
        try {
            String zzk = zzfpjVar.zza().zzk();
            HashMap hashMap = zza;
            Class cls = (Class) hashMap.get(zzk);
            if (cls != null) {
                return cls;
            }
            try {
                if (this.zze.zza(zzfpjVar.zzc())) {
                    try {
                        File zzb = zzfpjVar.zzb();
                        if (!zzb.exists()) {
                            zzb.mkdirs();
                        }
                        Class<?> loadClass = new DexClassLoader(zzfpjVar.zzc().getAbsolutePath(), zzb.getAbsolutePath(), null, this.zzb.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                        hashMap.put(zzk, loadClass);
                        return loadClass;
                    } catch (ClassNotFoundException e) {
                        e = e;
                        throw new zzfps(2008, e);
                    } catch (IllegalArgumentException e2) {
                        e = e2;
                        throw new zzfps(2008, e);
                    } catch (SecurityException e3) {
                        e = e3;
                        throw new zzfps(2008, e);
                    }
                }
                throw new zzfps(2026, "VM did not pass signature verification");
            } catch (GeneralSecurityException e4) {
                throw new zzfps(2026, e4);
            }
        } finally {
        }
    }

    @Nullable
    public final zzfoa zza() {
        zzfpi zzfpiVar;
        synchronized (this.zzg) {
            zzfpiVar = this.zzf;
        }
        return zzfpiVar;
    }

    @Nullable
    public final zzfpj zzb() {
        synchronized (this.zzg) {
            try {
                zzfpi zzfpiVar = this.zzf;
                if (zzfpiVar != null) {
                    return zzfpiVar.zzf();
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzc(@NonNull zzfpj zzfpjVar) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                zzfpi zzfpiVar = new zzfpi(zzd(zzfpjVar).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.zzb, "msa-r", zzfpjVar.zze(), null, new Bundle(), 2), zzfpjVar, this.zzc, this.zzd, false);
                if (zzfpiVar.zzh()) {
                    int zze = zzfpiVar.zze();
                    if (zze == 0) {
                        synchronized (this.zzg) {
                            zzfpi zzfpiVar2 = this.zzf;
                            if (zzfpiVar2 != null) {
                                try {
                                    zzfpiVar2.zzg();
                                } catch (zzfps e) {
                                    this.zzd.zzc(e.zza(), -1L, e);
                                }
                            }
                            this.zzf = zzfpiVar;
                        }
                        this.zzd.zzd(3000, System.currentTimeMillis() - currentTimeMillis);
                        return true;
                    }
                    throw new zzfps((int) PlaybackException.ERROR_CODE_DECODER_INIT_FAILED, "ci: " + zze);
                }
                throw new zzfps(4000, "init failed");
            } catch (Exception e2) {
                throw new zzfps(2004, e2);
            }
        } catch (zzfps e3) {
            this.zzd.zzc(e3.zza(), System.currentTimeMillis() - currentTimeMillis, e3);
            return false;
        } catch (Exception e4) {
            this.zzd.zzc(4010, System.currentTimeMillis() - currentTimeMillis, e4);
            return false;
        }
    }
}
