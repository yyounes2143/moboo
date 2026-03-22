package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaya {
    private final zzawo zza;
    private final String zzb;
    private final String zzc;
    private final Class[] zze;
    private volatile Method zzd = null;
    private final CountDownLatch zzf = new CountDownLatch(1);

    public zzaya(zzawo zzawoVar, String str, String str2, Class... clsArr) {
        this.zza = zzawoVar;
        this.zzb = str;
        this.zzc = str2;
        this.zze = clsArr;
        zzawoVar.zzj().submit(new zzaxz(this));
    }

    public static /* bridge */ /* synthetic */ void zzb(zzaya zzayaVar) {
        try {
            zzawo zzawoVar = zzayaVar.zza;
            Class<?> loadClass = zzawoVar.zzh().loadClass(zzayaVar.zzc(zzawoVar.zzs(), zzayaVar.zzb));
            if (loadClass != null) {
                zzayaVar.zzd = loadClass.getMethod(zzayaVar.zzc(zzawoVar.zzs(), zzayaVar.zzc), zzayaVar.zze);
            }
        } catch (zzavs | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException | NullPointerException unused) {
        } catch (Throwable th) {
            zzayaVar.zzf.countDown();
            throw th;
        }
        zzayaVar.zzf.countDown();
    }

    private final String zzc(byte[] bArr, String str) throws zzavs, UnsupportedEncodingException {
        return new String(this.zza.zze().zzb(bArr, str), "UTF-8");
    }

    public final Method zza() {
        if (this.zzd != null) {
            return this.zzd;
        }
        try {
            if (!this.zzf.await(2L, TimeUnit.SECONDS)) {
                return null;
            }
            return this.zzd;
        } catch (InterruptedException unused) {
            return null;
        }
    }
}
