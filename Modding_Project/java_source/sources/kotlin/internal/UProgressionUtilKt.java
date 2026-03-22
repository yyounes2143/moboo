package kotlin.internal;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import kotlin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\t\u001a'\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0004\b\u000f\u0010\u0006\u001a'\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001¢\u0006\u0004\b\u0011\u0010\t¨\u0006\u0012"}, d2 = {"differenceModulo", "Lkotlin/UInt;", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", "start", "end", "step", "", "getProgressionLastElement-Nkh28Cs", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class UProgressionUtilKt {
    /* renamed from: differenceModulo-WZ9TVnA  reason: not valid java name */
    private static final int m1643differenceModuloWZ9TVnA(int i, int i2, int i3) {
        int compare;
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i3);
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2, i3);
        compare = Integer.compare(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 ^ Integer.MIN_VALUE, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 ^ Integer.MIN_VALUE);
        int m533constructorimpl = UInt.m533constructorimpl(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        if (compare >= 0) {
            return m533constructorimpl;
        }
        return UInt.m533constructorimpl(m533constructorimpl + i3);
    }

    /* renamed from: differenceModulo-sambcqE  reason: not valid java name */
    private static final long m1644differenceModulosambcqE(long j, long j2, long j3) {
        int compare;
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, j3);
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2, j3);
        compare = Long.compare(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 ^ Long.MIN_VALUE, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 ^ Long.MIN_VALUE);
        long m612constructorimpl = ULong.m612constructorimpl(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        if (compare >= 0) {
            return m612constructorimpl;
        }
        return ULong.m612constructorimpl(m612constructorimpl + j3);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-7ftBX0g  reason: not valid java name */
    public static final long m1645getProgressionLastElement7ftBX0g(long j, long j2, long j3) {
        int compare;
        int compare2;
        int i = (j3 > 0L ? 1 : (j3 == 0L ? 0 : -1));
        if (i > 0) {
            compare2 = Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE);
            if (compare2 >= 0) {
                return j2;
            }
            return ULong.m612constructorimpl(j2 - m1644differenceModulosambcqE(j2, j, ULong.m612constructorimpl(j3)));
        } else if (i < 0) {
            compare = Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE);
            if (compare <= 0) {
                return j2;
            }
            return ULong.m612constructorimpl(j2 + m1644differenceModulosambcqE(j, j2, ULong.m612constructorimpl(-j3)));
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-Nkh28Cs  reason: not valid java name */
    public static final int m1646getProgressionLastElementNkh28Cs(int i, int i2, int i3) {
        int compare;
        int compare2;
        if (i3 > 0) {
            compare2 = Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
            if (compare2 < 0) {
                return UInt.m533constructorimpl(i2 - m1643differenceModuloWZ9TVnA(i2, i, UInt.m533constructorimpl(i3)));
            }
        } else if (i3 < 0) {
            compare = Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
            if (compare > 0) {
                return UInt.m533constructorimpl(i2 + m1643differenceModuloWZ9TVnA(i, i2, UInt.m533constructorimpl(-i3)));
            }
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
        return i2;
    }
}
