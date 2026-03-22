package androidx.media3.exoplayer.rtsp;

import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UriUtil;
/* compiled from: Proguard */
/* loaded from: classes.dex */
final class RtspTrackTiming {
    public final long rtpTimestamp;
    public final int sequenceNumber;
    public final Uri uri;

    private RtspTrackTiming(long j, int i, Uri uri) {
        this.rtpTimestamp = j;
        this.sequenceNumber = i;
        this.uri = uri;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008d A[Catch: Exception -> 0x005c, TRY_LEAVE, TryCatch #0 {Exception -> 0x005c, blocks: (B:7:0x002e, B:30:0x007b, B:32:0x0082, B:33:0x0087, B:34:0x0088, B:35:0x008d, B:14:0x0052, B:19:0x005e, B:22:0x0069), top: B:54:0x002e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.common.collect.ImmutableList<androidx.media3.exoplayer.rtsp.RtspTrackTiming> parseTrackTiming(java.lang.String r20, android.net.Uri r21) throws androidx.media3.common.ParserException {
        /*
            com.google.common.collect.ImmutableList$Builder r0 = new com.google.common.collect.ImmutableList$Builder
            r0.<init>()
            java.lang.String r1 = ","
            r2 = r20
            java.lang.String[] r1 = androidx.media3.common.util.Util.split(r2, r1)
            int r2 = r1.length
            r4 = 0
        Lf:
            if (r4 >= r2) goto Ld1
            r5 = r1[r4]
            java.lang.String r6 = ";"
            java.lang.String[] r6 = androidx.media3.common.util.Util.split(r5, r6)
            int r7 = r6.length
            r15 = r4
            r20 = 0
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r12 = 0
            r13 = 0
            r14 = -1
        L25:
            if (r12 >= r7) goto L9f
            r16 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r8 = r6[r12]
            java.lang.String r9 = "="
            java.lang.String[] r9 = androidx.media3.common.util.Util.splitAtFirst(r8, r9)     // Catch: java.lang.Exception -> L5c
            r11 = r9[r20]     // Catch: java.lang.Exception -> L5c
            r10 = 1
            r9 = r9[r10]     // Catch: java.lang.Exception -> L5c
            int r10 = r11.hashCode()     // Catch: java.lang.Exception -> L5c
            r18 = r1
            r1 = 113759(0x1bc5f, float:1.5941E-40)
            r19 = r2
            r2 = 2
            if (r10 == r1) goto L69
            r1 = 116079(0x1c56f, float:1.62661E-40)
            if (r10 == r1) goto L5e
            r1 = 1524180539(0x5ad9263b, float:3.05610524E16)
            if (r10 == r1) goto L52
            goto L73
        L52:
            java.lang.String r1 = "rtptime"
            boolean r1 = r11.equals(r1)     // Catch: java.lang.Exception -> L5c
            if (r1 == 0) goto L73
            r1 = r2
            goto L74
        L5c:
            r0 = move-exception
            goto L9a
        L5e:
            java.lang.String r1 = "url"
            boolean r1 = r11.equals(r1)     // Catch: java.lang.Exception -> L5c
            if (r1 == 0) goto L73
            r1 = r20
            goto L74
        L69:
            java.lang.String r1 = "seq"
            boolean r1 = r11.equals(r1)     // Catch: java.lang.Exception -> L5c
            if (r1 == 0) goto L73
            r1 = 1
            goto L74
        L73:
            r1 = -1
        L74:
            if (r1 == 0) goto L8d
            r10 = 1
            if (r1 == r10) goto L88
            if (r1 != r2) goto L82
            long r3 = java.lang.Long.parseLong(r9)     // Catch: java.lang.Exception -> L5c
        L7f:
            r1 = r21
            goto L93
        L82:
            r0 = 0
            androidx.media3.common.ParserException r0 = androidx.media3.common.ParserException.createForMalformedManifest(r11, r0)     // Catch: java.lang.Exception -> L5c
            throw r0     // Catch: java.lang.Exception -> L5c
        L88:
            int r14 = java.lang.Integer.parseInt(r9)     // Catch: java.lang.Exception -> L5c
            goto L7f
        L8d:
            r1 = r21
            android.net.Uri r13 = resolveUri(r9, r1)     // Catch: java.lang.Exception -> L5c
        L93:
            int r12 = r12 + 1
            r1 = r18
            r2 = r19
            goto L25
        L9a:
            androidx.media3.common.ParserException r0 = androidx.media3.common.ParserException.createForMalformedManifest(r8, r0)
            throw r0
        L9f:
            r18 = r1
            r19 = r2
            r16 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r1 = r21
            if (r13 == 0) goto Lba
            java.lang.String r2 = r13.getScheme()
            if (r2 == 0) goto Lba
            r2 = -1
            if (r14 != r2) goto Lbc
            int r2 = (r3 > r16 ? 1 : (r3 == r16 ? 0 : -1))
            if (r2 == 0) goto Lba
            goto Lbc
        Lba:
            r0 = 0
            goto Lcc
        Lbc:
            androidx.media3.exoplayer.rtsp.RtspTrackTiming r2 = new androidx.media3.exoplayer.rtsp.RtspTrackTiming
            r2.<init>(r3, r14, r13)
            r0.add(r2)
            int r4 = r15 + 1
            r1 = r18
            r2 = r19
            goto Lf
        Lcc:
            androidx.media3.common.ParserException r0 = androidx.media3.common.ParserException.createForMalformedManifest(r5, r0)
            throw r0
        Ld1:
            com.google.common.collect.ImmutableList r0 = r0.build()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.rtsp.RtspTrackTiming.parseTrackTiming(java.lang.String, android.net.Uri):com.google.common.collect.ImmutableList");
    }

    @VisibleForTesting
    public static Uri resolveUri(String str, Uri uri) {
        Assertions.checkArgument(((String) Assertions.checkNotNull(uri.getScheme())).equals("rtsp"));
        Uri parse = Uri.parse(str);
        if (parse.isAbsolute()) {
            return parse;
        }
        Uri parse2 = Uri.parse("rtsp://" + str);
        String uri2 = uri.toString();
        if (((String) Assertions.checkNotNull(parse2.getHost())).equals(uri.getHost())) {
            return parse2;
        }
        if (uri2.endsWith("/")) {
            return UriUtil.resolveToUri(uri2, str);
        }
        return UriUtil.resolveToUri(uri2 + "/", str);
    }
}
