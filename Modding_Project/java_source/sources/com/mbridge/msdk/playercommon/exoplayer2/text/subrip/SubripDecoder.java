package com.mbridge.msdk.playercommon.exoplayer2.text.subrip;

import com.mbridge.msdk.playercommon.exoplayer2.text.SimpleSubtitleDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class SubripDecoder extends SimpleSubtitleDecoder {
    private static final String SUBRIP_TIMECODE = "(?:(\\d+):)?(\\d+):(\\d+),(\\d+)";
    private static final Pattern SUBRIP_TIMING_LINE = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))?\\s*");
    private static final String TAG = "SubripDecoder";
    private final StringBuilder textBuilder;

    public SubripDecoder() {
        super(TAG);
        this.textBuilder = new StringBuilder();
    }

    private static long parseTimecode(Matcher matcher, int i) {
        return ((Long.parseLong(matcher.group(i + 1)) * 3600000) + (Long.parseLong(matcher.group(i + 2)) * 60000) + (Long.parseLong(matcher.group(i + 3)) * 1000) + Long.parseLong(matcher.group(i + 4))) * 1000;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0091 A[EDGE_INSN: B:35:0x0091->B:28:0x0091 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0015  */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.SimpleSubtitleDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mbridge.msdk.playercommon.exoplayer2.text.subrip.SubripSubtitle decode(byte[] r6, int r7, boolean r8) {
        /*
            r5 = this;
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            com.mbridge.msdk.playercommon.exoplayer2.util.LongArray r0 = new com.mbridge.msdk.playercommon.exoplayer2.util.LongArray
            r0.<init>()
            com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray r1 = new com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray
            r1.<init>(r6, r7)
        Lf:
            java.lang.String r6 = r1.readLine()
            if (r6 == 0) goto L91
            int r7 = r6.length()
            if (r7 != 0) goto L1c
            goto Lf
        L1c:
            java.lang.Integer.parseInt(r6)     // Catch: java.lang.NumberFormatException -> Lf
            java.lang.String r6 = r1.readLine()
            if (r6 != 0) goto L26
            goto L91
        L26:
            java.util.regex.Pattern r7 = com.mbridge.msdk.playercommon.exoplayer2.text.subrip.SubripDecoder.SUBRIP_TIMING_LINE
            java.util.regex.Matcher r6 = r7.matcher(r6)
            boolean r7 = r6.matches()
            if (r7 == 0) goto Lf
            r7 = 1
            long r2 = parseTimecode(r6, r7)
            r0.add(r2)
            r2 = 6
            java.lang.String r3 = r6.group(r2)
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            r4 = 0
            if (r3 != 0) goto L4e
            long r2 = parseTimecode(r6, r2)
            r0.add(r2)
            goto L4f
        L4e:
            r7 = r4
        L4f:
            java.lang.StringBuilder r6 = r5.textBuilder
            r6.setLength(r4)
        L54:
            java.lang.String r6 = r1.readLine()
            boolean r2 = android.text.TextUtils.isEmpty(r6)
            if (r2 != 0) goto L77
            java.lang.StringBuilder r2 = r5.textBuilder
            int r2 = r2.length()
            if (r2 <= 0) goto L6d
            java.lang.StringBuilder r2 = r5.textBuilder
            java.lang.String r3 = "<br>"
            r2.append(r3)
        L6d:
            java.lang.StringBuilder r2 = r5.textBuilder
            java.lang.String r6 = r6.trim()
            r2.append(r6)
            goto L54
        L77:
            java.lang.StringBuilder r6 = r5.textBuilder
            java.lang.String r6 = r6.toString()
            android.text.Spanned r6 = android.text.Html.fromHtml(r6)
            com.mbridge.msdk.playercommon.exoplayer2.text.Cue r2 = new com.mbridge.msdk.playercommon.exoplayer2.text.Cue
            r2.<init>(r6)
            r8.add(r2)
            if (r7 == 0) goto Lf
            r6 = 0
            r8.add(r6)
            goto Lf
        L91:
            int r6 = r8.size()
            com.mbridge.msdk.playercommon.exoplayer2.text.Cue[] r6 = new com.mbridge.msdk.playercommon.exoplayer2.text.Cue[r6]
            r8.toArray(r6)
            long[] r7 = r0.toArray()
            com.mbridge.msdk.playercommon.exoplayer2.text.subrip.SubripSubtitle r8 = new com.mbridge.msdk.playercommon.exoplayer2.text.subrip.SubripSubtitle
            r8.<init>(r6, r7)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.playercommon.exoplayer2.text.subrip.SubripDecoder.decode(byte[], int, boolean):com.mbridge.msdk.playercommon.exoplayer2.text.subrip.SubripSubtitle");
    }
}
