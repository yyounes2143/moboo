package j$.time;

import com.tencent.thumbplayer.tcmedia.core.common.TPCodecParamers;
import j$.time.format.C2162a;
import j$.time.temporal.ChronoUnit;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class j implements j$.time.temporal.m, j$.time.temporal.n {
    public static final j APRIL;
    public static final j AUGUST;
    public static final j DECEMBER;
    public static final j FEBRUARY;
    public static final j JANUARY;
    public static final j JULY;
    public static final j JUNE;
    public static final j MARCH;
    public static final j MAY;
    public static final j NOVEMBER;
    public static final j OCTOBER;
    public static final j SEPTEMBER;

    /* renamed from: a  reason: collision with root package name */
    public static final j[] f11770a;
    public static final /* synthetic */ j[] b;

    public static j valueOf(String str) {
        return (j) Enum.valueOf(j.class, str);
    }

    public static j[] values() {
        return (j[]) b.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.Enum, j$.time.j] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, j$.time.j] */
    /* JADX WARN: Type inference failed for: r14v1, types: [java.lang.Enum, j$.time.j] */
    /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Enum, j$.time.j] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, j$.time.j] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, j$.time.j] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, j$.time.j] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, j$.time.j] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, j$.time.j] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Enum, j$.time.j] */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Enum, j$.time.j] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Enum, j$.time.j] */
    static {
        ?? r12 = new Enum("JANUARY", 0);
        JANUARY = r12;
        ?? r13 = new Enum("FEBRUARY", 1);
        FEBRUARY = r13;
        ?? r14 = new Enum("MARCH", 2);
        MARCH = r14;
        ?? r15 = new Enum("APRIL", 3);
        APRIL = r15;
        ?? r9 = new Enum("MAY", 4);
        MAY = r9;
        ?? r8 = new Enum("JUNE", 5);
        JUNE = r8;
        ?? r7 = new Enum("JULY", 6);
        JULY = r7;
        ?? r6 = new Enum("AUGUST", 7);
        AUGUST = r6;
        ?? r5 = new Enum("SEPTEMBER", 8);
        SEPTEMBER = r5;
        ?? r4 = new Enum("OCTOBER", 9);
        OCTOBER = r4;
        ?? r3 = new Enum("NOVEMBER", 10);
        NOVEMBER = r3;
        ?? r2 = new Enum("DECEMBER", 11);
        DECEMBER = r2;
        b = new j[]{r12, r13, r14, r15, r9, r8, r7, r6, r5, r4, r3, r2};
        f11770a = values();
    }

    public static j I(int i) {
        if (i < 1 || i > 12) {
            throw new RuntimeException("Invalid value for MonthOfYear: " + i);
        }
        return f11770a[i - 1];
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? pVar == j$.time.temporal.a.MONTH_OF_YEAR : pVar != null && pVar.k(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        if (pVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return pVar.h();
        }
        return j$.time.temporal.q.d(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final int i(j$.time.temporal.p pVar) {
        if (pVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return getValue();
        }
        return j$.time.temporal.q.a(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        if (pVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return getValue();
        }
        if (pVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(c.a("Unsupported field: ", pVar));
        }
        return pVar.i(this);
    }

    public final int G(boolean z) {
        int i = i.f11769a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public final int H() {
        int i = i.f11769a[ordinal()];
        if (i != 1) {
            return (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31;
        }
        return 29;
    }

    public final int F(boolean z) {
        switch (i.f11769a[ordinal()]) {
            case 1:
                return 32;
            case 2:
                return (z ? 1 : 0) + 91;
            case 3:
                return (z ? 1 : 0) + 152;
            case 4:
                return (z ? 1 : 0) + TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE;
            case 5:
                return (z ? 1 : 0) + 305;
            case 6:
                return 1;
            case 7:
                return (z ? 1 : 0) + 60;
            case 8:
                return (z ? 1 : 0) + 121;
            case 9:
                return (z ? 1 : 0) + 182;
            case 10:
                return (z ? 1 : 0) + 213;
            case 11:
                return (z ? 1 : 0) + 274;
            default:
                return (z ? 1 : 0) + 335;
        }
    }

    @Override // j$.time.temporal.m
    public final Object n(C2162a c2162a) {
        if (c2162a == j$.time.temporal.q.b) {
            return j$.time.chrono.s.c;
        }
        if (c2162a == j$.time.temporal.q.c) {
            return ChronoUnit.MONTHS;
        }
        return j$.time.temporal.q.c(this, c2162a);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        if (!j$.com.android.tools.r8.a.I(lVar).equals(j$.time.chrono.s.c)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        return lVar.c(getValue(), j$.time.temporal.a.MONTH_OF_YEAR);
    }
}
