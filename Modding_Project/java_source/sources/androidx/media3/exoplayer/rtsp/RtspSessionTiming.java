package androidx.media3.exoplayer.rtsp;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.Util;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes.dex */
final class RtspSessionTiming {
    private static final long LIVE_START_TIME = 0;
    private static final String START_TIMING_NTP_FORMAT = "npt=%.3f-";
    public final long startTimeMs;
    public final long stopTimeMs;
    public static final RtspSessionTiming DEFAULT = new RtspSessionTiming(0, -9223372036854775807L);
    private static final Pattern NPT_RANGE_PATTERN = Pattern.compile("npt[:=]([.\\d]+|now)\\s?-\\s?([.\\d]+)?");

    private RtspSessionTiming(long j, long j2) {
        this.startTimeMs = j;
        this.stopTimeMs = j2;
    }

    public static String getOffsetStartTimeTiming(long j) {
        return Util.formatInvariant(START_TIMING_NTP_FORMAT, Double.valueOf(j / 1000.0d));
    }

    public static RtspSessionTiming parseTiming(String str) throws ParserException {
        boolean z;
        long parseFloat;
        long parseFloat2;
        Matcher matcher = NPT_RANGE_PATTERN.matcher(str);
        RtspMessageUtil.checkManifestExpression(matcher.matches(), str);
        boolean z2 = true;
        String group = matcher.group(1);
        if (group != null) {
            z = true;
        } else {
            z = false;
        }
        RtspMessageUtil.checkManifestExpression(z, str);
        if (((String) Util.castNonNull(group)).equals("now")) {
            parseFloat = 0;
        } else {
            parseFloat = Float.parseFloat(group) * 1000.0f;
        }
        String group2 = matcher.group(2);
        if (group2 != null) {
            try {
                parseFloat2 = Float.parseFloat(group2) * 1000.0f;
                if (parseFloat2 < parseFloat) {
                    z2 = false;
                }
                RtspMessageUtil.checkManifestExpression(z2, str);
            } catch (NumberFormatException e) {
                throw ParserException.createForMalformedManifest(group2, e);
            }
        } else {
            parseFloat2 = -9223372036854775807L;
        }
        return new RtspSessionTiming(parseFloat, parseFloat2);
    }

    public long getDurationMs() {
        return this.stopTimeMs - this.startTimeMs;
    }

    public boolean isLive() {
        if (this.stopTimeMs == -9223372036854775807L) {
            return true;
        }
        return false;
    }
}
