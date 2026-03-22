package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzagh {
    private static final String[] zza = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    private static final String[] zzb = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    private static final String[] zzc = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0082, code lost:
        if (r7 == (-1)) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0084, code lost:
        r7 = -9223372036854775807L;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzagd zza(java.lang.String r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagh.zza(java.lang.String):com.google.android.gms.internal.ads.zzagd");
    }

    private static zzfyc zzb(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        long j;
        int i = zzfyc.zzd;
        zzfxz zzfxzVar = new zzfxz();
        do {
            String concat = str.concat(":Item");
            xmlPullParser.next();
            if (zzev.zzc(xmlPullParser, concat)) {
                String concat2 = str2.concat(":Mime");
                String concat3 = str2.concat(":Semantic");
                String concat4 = str2.concat(":Length");
                String concat5 = str2.concat(":Padding");
                String zza2 = zzev.zza(xmlPullParser, concat2);
                String zza3 = zzev.zza(xmlPullParser, concat3);
                String zza4 = zzev.zza(xmlPullParser, concat4);
                String zza5 = zzev.zza(xmlPullParser, concat5);
                if (zza2 != null && zza3 != null) {
                    long j2 = 0;
                    if (zza4 != null) {
                        j = Long.parseLong(zza4);
                    } else {
                        j = 0;
                    }
                    if (zza5 != null) {
                        j2 = Long.parseLong(zza5);
                    }
                    zzfxzVar.zzf(new zzagc(zza2, zza3, j, j2));
                } else {
                    return zzfyc.zzn();
                }
            }
        } while (!zzev.zzb(xmlPullParser, str.concat(":Directory")));
        return zzfxzVar.zzi();
    }
}
