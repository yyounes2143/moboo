package com.google.android.gms.measurement.internal;

import android.net.Uri;
import j$.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzkx implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ Uri zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzky zze;

    public zzkx(zzky zzkyVar, boolean z, Uri uri, String str, String str2) {
        this.zza = z;
        this.zzb = uri;
        this.zzc = str;
        this.zzd = str2;
        Objects.requireNonNull(zzkyVar);
        this.zze = zzkyVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00de A[Catch: RuntimeException -> 0x0077, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0077, blocks: (B:3:0x000d, B:33:0x0095, B:35:0x009f, B:38:0x00ac, B:40:0x00b2, B:42:0x00cc, B:44:0x00d7, B:47:0x00de, B:51:0x00fe, B:54:0x0117, B:53:0x0109, B:56:0x011b, B:58:0x0121, B:60:0x0127, B:62:0x012d, B:64:0x0133, B:66:0x013b, B:68:0x0143, B:70:0x0149, B:72:0x014e, B:7:0x0029, B:9:0x002f, B:11:0x0037, B:13:0x003d, B:15:0x0043, B:17:0x0049, B:19:0x0051, B:21:0x0059, B:23:0x0061, B:25:0x0069, B:28:0x007a, B:30:0x0088), top: B:76:0x000d }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkx.run():void");
    }
}
