package com.google.android.gms.internal.ads;

import com.mbridge.msdk.foundation.tools.SameMD5;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzauh implements Runnable {
    private zzauh() {
        throw null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            zzauj.zzd(MessageDigest.getInstance(SameMD5.TAG));
            countDownLatch = zzauj.zzb;
        } catch (NoSuchAlgorithmException unused) {
            countDownLatch = zzauj.zzb;
        } catch (Throwable th) {
            zzauj.zzb.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }

    public /* synthetic */ zzauh(zzaui zzauiVar) {
    }
}
