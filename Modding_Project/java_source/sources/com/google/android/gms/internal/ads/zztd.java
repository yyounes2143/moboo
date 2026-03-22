package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import androidx.annotation.RequiresApi;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@RequiresApi(29)
/* loaded from: classes4.dex */
public final class zztd {
    /* JADX WARN: Removed duplicated region for block: B:25:0x004e A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zza(android.media.MediaCodecInfo.VideoCapabilities r2, int r3, int r4, double r5) {
        /*
            java.util.List r2 = androidx.media3.exoplayer.mediacodec.Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)
            r0 = 0
            if (r2 == 0) goto L50
            boolean r1 = r2.isEmpty()
            if (r1 == 0) goto Le
            goto L50
        Le:
            int r5 = (int) r5
            android.media.MediaCodecInfo$VideoCapabilities$PerformancePoint r3 = androidx.media3.exoplayer.mediacodec.Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3, r4, r5)
            int r2 = zzc(r2, r3)
            r3 = 1
            if (r2 != r3) goto L4f
            java.lang.Boolean r4 = com.google.android.gms.internal.ads.zzte.zzb()
            if (r4 != 0) goto L4f
            int r4 = android.os.Build.VERSION.SDK_INT
            r5 = 35
            if (r4 < r5) goto L28
        L26:
            r3 = r0
            goto L3d
        L28:
            int r4 = zzb(r0)
            int r5 = zzb(r3)
            if (r4 != 0) goto L33
            goto L3d
        L33:
            r6 = 2
            if (r5 != 0) goto L39
            if (r4 == r6) goto L26
            goto L3d
        L39:
            if (r4 != r6) goto L3d
            if (r5 == r6) goto L26
        L3d:
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            com.google.android.gms.internal.ads.zzte.zzc(r3)
            java.lang.Boolean r3 = com.google.android.gms.internal.ads.zzte.zzb()
            boolean r3 = r3.booleanValue()
            if (r3 == 0) goto L4f
            return r0
        L4f:
            return r2
        L50:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztd.zza(android.media.MediaCodecInfo$VideoCapabilities, int, int, double):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
        r2 = r2.getSupportedPerformancePoints();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int zzb(boolean r4) {
        /*
            r0 = 0
            com.google.android.gms.internal.ads.zzx r1 = new com.google.android.gms.internal.ads.zzx     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            r1.<init>()     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            java.lang.String r2 = "video/avc"
            r1.zzad(r2)     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            com.google.android.gms.internal.ads.zzz r1 = r1.zzaj()     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            java.lang.String r2 = r1.zzo     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            if (r2 == 0) goto L59
            com.google.android.gms.internal.ads.zztl r2 = com.google.android.gms.internal.ads.zztl.zza     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            java.util.List r4 = com.google.android.gms.internal.ads.zztw.zze(r2, r1, r4, r0)     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            r1 = r0
        L1a:
            int r2 = r4.size()     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            if (r1 >= r2) goto L59
            java.lang.Object r2 = r4.get(r1)     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            com.google.android.gms.internal.ads.zztc r2 = (com.google.android.gms.internal.ads.zztc) r2     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            android.media.MediaCodecInfo$CodecCapabilities r2 = r2.zzd     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            if (r2 == 0) goto L56
            java.lang.Object r2 = r4.get(r1)     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            com.google.android.gms.internal.ads.zztc r2 = (com.google.android.gms.internal.ads.zztc) r2     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            android.media.MediaCodecInfo$CodecCapabilities r2 = r2.zzd     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            android.media.MediaCodecInfo$VideoCapabilities r2 = r2.getVideoCapabilities()     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            if (r2 == 0) goto L56
            java.util.List r2 = androidx.media3.exoplayer.mediacodec.Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            if (r2 == 0) goto L56
            boolean r3 = r2.isEmpty()     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            if (r3 != 0) goto L56
            androidx.media3.exoplayer.mediacodec.Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            r4 = 720(0x2d0, float:1.009E-42)
            r1 = 60
            r3 = 1280(0x500, float:1.794E-42)
            android.media.MediaCodecInfo$VideoCapabilities$PerformancePoint r4 = androidx.media3.exoplayer.mediacodec.Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3, r4, r1)     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            int r4 = zzc(r2, r4)     // Catch: com.google.android.gms.internal.ads.zztq -> L59
            return r4
        L56:
            int r1 = r1 + 1
            goto L1a
        L59:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztd.zzb(boolean):int");
    }

    private static int zzc(List list, MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint) {
        boolean covers;
        for (int i = 0; i < list.size(); i++) {
            covers = androidx.media3.exoplayer.mediacodec.Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list.get(i)).covers(performancePoint);
            if (covers) {
                return 2;
            }
        }
        return 1;
    }
}
