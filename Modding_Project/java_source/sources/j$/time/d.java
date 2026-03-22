package j$.time;

import j$.time.format.C2162a;
import j$.time.temporal.ChronoUnit;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class d implements j$.time.temporal.m, j$.time.temporal.n {
    public static final d FRIDAY;
    public static final d MONDAY;
    public static final d SATURDAY;
    public static final d SUNDAY;
    public static final d THURSDAY;
    public static final d TUESDAY;
    public static final d WEDNESDAY;

    /* renamed from: a  reason: collision with root package name */
    public static final d[] f11743a;
    public static final /* synthetic */ d[] b;

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) b.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Enum, j$.time.d] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, j$.time.d] */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Enum, j$.time.d] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, j$.time.d] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Enum, j$.time.d] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Enum, j$.time.d] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, j$.time.d] */
    static {
        ?? r7 = new Enum("MONDAY", 0);
        MONDAY = r7;
        ?? r8 = new Enum("TUESDAY", 1);
        TUESDAY = r8;
        ?? r9 = new Enum("WEDNESDAY", 2);
        WEDNESDAY = r9;
        ?? r10 = new Enum("THURSDAY", 3);
        THURSDAY = r10;
        ?? r11 = new Enum("FRIDAY", 4);
        FRIDAY = r11;
        ?? r12 = new Enum("SATURDAY", 5);
        SATURDAY = r12;
        ?? r13 = new Enum("SUNDAY", 6);
        SUNDAY = r13;
        b = new d[]{r7, r8, r9, r10, r11, r12, r13};
        f11743a = values();
    }

    public static d F(int i) {
        if (i < 1 || i > 7) {
            throw new RuntimeException("Invalid value for DayOfWeek: " + i);
        }
        return f11743a[i - 1];
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? pVar == j$.time.temporal.a.DAY_OF_WEEK : pVar != null && pVar.k(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        if (pVar == j$.time.temporal.a.DAY_OF_WEEK) {
            return pVar.h();
        }
        return j$.time.temporal.q.d(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final int i(j$.time.temporal.p pVar) {
        if (pVar == j$.time.temporal.a.DAY_OF_WEEK) {
            return getValue();
        }
        return j$.time.temporal.q.a(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        if (pVar == j$.time.temporal.a.DAY_OF_WEEK) {
            return getValue();
        }
        if (pVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(c.a("Unsupported field: ", pVar));
        }
        return pVar.i(this);
    }

    @Override // j$.time.temporal.m
    public final Object n(C2162a c2162a) {
        if (c2162a == j$.time.temporal.q.c) {
            return ChronoUnit.DAYS;
        }
        return j$.time.temporal.q.c(this, c2162a);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return lVar.c(getValue(), j$.time.temporal.a.DAY_OF_WEEK);
    }
}
