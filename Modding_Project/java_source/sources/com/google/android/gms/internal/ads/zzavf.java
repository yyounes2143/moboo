package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
import androidx.annotation.VisibleForTesting;
import j$.util.concurrent.ThreadLocalRandom;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzavf {
    @VisibleForTesting
    protected volatile Boolean zzb;
    private final zzawo zze;
    private static final ConditionVariable zzc = new ConditionVariable();
    @VisibleForTesting
    protected static volatile zzfpx zza = null;
    private static volatile Random zzd = null;

    public zzavf(zzawo zzawoVar) {
        this.zze = zzawoVar;
        zzawoVar.zzj().execute(new zzave(this));
    }

    public static final int zzd() {
        try {
            return ThreadLocalRandom.current().nextInt();
        } catch (RuntimeException unused) {
            if (zzd == null) {
                synchronized (zzavf.class) {
                    try {
                        if (zzd == null) {
                            zzd = new Random();
                        }
                    } finally {
                    }
                }
            }
            return zzd.nextInt();
        }
    }

    public final void zzc(int i, int i2, long j, String str, Exception exc) {
        try {
            zzc.block();
            if (this.zzb.booleanValue() && zza != null) {
                zzarq zza2 = zzaru.zza();
                zza2.zza(this.zze.zza.getPackageName());
                zza2.zze(j);
                if (str != null) {
                    zza2.zzb(str);
                }
                if (exc != null) {
                    StringWriter stringWriter = new StringWriter();
                    exc.printStackTrace(new PrintWriter(stringWriter));
                    zza2.zzf(stringWriter.toString());
                    zza2.zzd(exc.getClass().getName());
                }
                zzfpv zza3 = zza.zza(((zzaru) zza2.zzbr()).zzaV());
                zza3.zza(i);
                if (i2 != -1) {
                    zza3.zzb(i2);
                }
                zza3.zzc();
            }
        } catch (Exception unused) {
        }
    }
}
