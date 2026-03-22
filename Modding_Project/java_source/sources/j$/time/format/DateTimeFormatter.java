package j$.time.format;

import j$.util.Objects;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* loaded from: classes2.dex */
public final class DateTimeFormatter {
    public static final DateTimeFormatter ISO_LOCAL_DATE;
    public static final DateTimeFormatter e;

    /* renamed from: a  reason: collision with root package name */
    public final e f11748a;
    public final Locale b;
    public final y c;
    public final j$.time.chrono.s d;

    /* JADX WARN: Removed duplicated region for block: B:142:0x024c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x04aa  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x04c3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static j$.time.format.DateTimeFormatter ofPattern(java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 1350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.DateTimeFormatter.ofPattern(java.lang.String):j$.time.format.DateTimeFormatter");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11, types: [j$.time.format.f, java.lang.Object] */
    static {
        s sVar = new s();
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        A a2 = A.EXCEEDS_PAD;
        sVar.l(aVar, 4, 10, a2);
        sVar.c('-');
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        sVar.k(aVar2, 2);
        sVar.c('-');
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        sVar.k(aVar3, 2);
        z zVar = z.STRICT;
        j$.time.chrono.s sVar2 = j$.time.chrono.s.c;
        DateTimeFormatter o = sVar.o(zVar, sVar2);
        ISO_LOCAL_DATE = o;
        s sVar3 = new s();
        n nVar = n.INSENSITIVE;
        sVar3.b(nVar);
        sVar3.a(o);
        k kVar = k.e;
        sVar3.b(kVar);
        sVar3.o(zVar, sVar2);
        s sVar4 = new s();
        sVar4.b(nVar);
        sVar4.a(o);
        sVar4.n();
        sVar4.b(kVar);
        sVar4.o(zVar, sVar2);
        s sVar5 = new s();
        j$.time.temporal.a aVar4 = j$.time.temporal.a.HOUR_OF_DAY;
        sVar5.k(aVar4, 2);
        sVar5.c(AbstractJsonLexerKt.COLON);
        j$.time.temporal.a aVar5 = j$.time.temporal.a.MINUTE_OF_HOUR;
        sVar5.k(aVar5, 2);
        sVar5.n();
        sVar5.c(AbstractJsonLexerKt.COLON);
        j$.time.temporal.a aVar6 = j$.time.temporal.a.SECOND_OF_MINUTE;
        sVar5.k(aVar6, 2);
        sVar5.n();
        sVar5.b(new g(j$.time.temporal.a.NANO_OF_SECOND, 0, 9, true));
        DateTimeFormatter o2 = sVar5.o(zVar, null);
        s sVar6 = new s();
        sVar6.b(nVar);
        sVar6.a(o2);
        sVar6.b(kVar);
        sVar6.o(zVar, null);
        s sVar7 = new s();
        sVar7.b(nVar);
        sVar7.a(o2);
        sVar7.n();
        sVar7.b(kVar);
        sVar7.o(zVar, null);
        s sVar8 = new s();
        sVar8.b(nVar);
        sVar8.a(o);
        sVar8.c('T');
        sVar8.a(o2);
        DateTimeFormatter o3 = sVar8.o(zVar, sVar2);
        s sVar9 = new s();
        sVar9.b(nVar);
        sVar9.a(o3);
        n nVar2 = n.LENIENT;
        sVar9.b(nVar2);
        sVar9.b(kVar);
        n nVar3 = n.STRICT;
        sVar9.b(nVar3);
        DateTimeFormatter o4 = sVar9.o(zVar, sVar2);
        s sVar10 = new s();
        sVar10.a(o4);
        sVar10.n();
        sVar10.c(AbstractJsonLexerKt.BEGIN_LIST);
        n nVar4 = n.SENSITIVE;
        sVar10.b(nVar4);
        C2162a c2162a = s.h;
        sVar10.b(new q(c2162a, "ZoneRegionId()"));
        sVar10.c(AbstractJsonLexerKt.END_LIST);
        sVar10.o(zVar, sVar2);
        s sVar11 = new s();
        sVar11.a(o3);
        sVar11.n();
        sVar11.b(kVar);
        sVar11.n();
        sVar11.c(AbstractJsonLexerKt.BEGIN_LIST);
        sVar11.b(nVar4);
        sVar11.b(new q(c2162a, "ZoneRegionId()"));
        sVar11.c(AbstractJsonLexerKt.END_LIST);
        sVar11.o(zVar, sVar2);
        s sVar12 = new s();
        sVar12.b(nVar);
        sVar12.l(aVar, 4, 10, a2);
        sVar12.c('-');
        sVar12.k(j$.time.temporal.a.DAY_OF_YEAR, 3);
        sVar12.n();
        sVar12.b(kVar);
        sVar12.o(zVar, sVar2);
        s sVar13 = new s();
        sVar13.b(nVar);
        sVar13.l(j$.time.temporal.i.c, 4, 10, a2);
        sVar13.d("-W");
        sVar13.k(j$.time.temporal.i.b, 2);
        sVar13.c('-');
        j$.time.temporal.a aVar7 = j$.time.temporal.a.DAY_OF_WEEK;
        sVar13.k(aVar7, 1);
        sVar13.n();
        sVar13.b(kVar);
        sVar13.o(zVar, sVar2);
        s sVar14 = new s();
        sVar14.b(nVar);
        sVar14.b(new Object());
        e = sVar14.o(zVar, null);
        s sVar15 = new s();
        sVar15.b(nVar);
        sVar15.k(aVar, 4);
        sVar15.k(aVar2, 2);
        sVar15.k(aVar3, 2);
        sVar15.n();
        sVar15.b(nVar2);
        sVar15.f("+HHMMss", "Z");
        sVar15.b(nVar3);
        sVar15.o(zVar, sVar2);
        HashMap hashMap = new HashMap();
        hashMap.put(1L, "Mon");
        hashMap.put(2L, "Tue");
        hashMap.put(3L, "Wed");
        hashMap.put(4L, "Thu");
        hashMap.put(5L, "Fri");
        hashMap.put(6L, "Sat");
        hashMap.put(7L, "Sun");
        HashMap hashMap2 = new HashMap();
        hashMap2.put(1L, "Jan");
        hashMap2.put(2L, "Feb");
        hashMap2.put(3L, "Mar");
        hashMap2.put(4L, "Apr");
        hashMap2.put(5L, "May");
        hashMap2.put(6L, "Jun");
        hashMap2.put(7L, "Jul");
        hashMap2.put(8L, "Aug");
        hashMap2.put(9L, "Sep");
        hashMap2.put(10L, "Oct");
        hashMap2.put(11L, "Nov");
        hashMap2.put(12L, "Dec");
        s sVar16 = new s();
        sVar16.b(nVar);
        sVar16.b(nVar2);
        sVar16.n();
        sVar16.g(aVar7, hashMap);
        sVar16.d(", ");
        sVar16.m();
        sVar16.l(aVar3, 1, 2, A.NOT_NEGATIVE);
        sVar16.c(' ');
        sVar16.g(aVar2, hashMap2);
        sVar16.c(' ');
        sVar16.k(aVar, 4);
        sVar16.c(' ');
        sVar16.k(aVar4, 2);
        sVar16.c(AbstractJsonLexerKt.COLON);
        sVar16.k(aVar5, 2);
        sVar16.n();
        sVar16.c(AbstractJsonLexerKt.COLON);
        sVar16.k(aVar6, 2);
        sVar16.m();
        sVar16.c(' ');
        sVar16.f("+HHMM", "GMT");
        sVar16.o(z.SMART, sVar2);
    }

    public DateTimeFormatter(e eVar, Locale locale, z zVar, j$.time.chrono.s sVar) {
        y yVar = y.f11765a;
        this.f11748a = (e) Objects.requireNonNull(eVar, "printerParser");
        this.b = (Locale) Objects.requireNonNull(locale, "locale");
        this.c = (y) Objects.requireNonNull(yVar, "decimalStyle");
        z zVar2 = (z) Objects.requireNonNull(zVar, "resolverStyle");
        this.d = sVar;
    }

    public final String a(j$.time.temporal.m mVar) {
        StringBuilder sb = new StringBuilder(32);
        Objects.requireNonNull(mVar, "temporal");
        Objects.requireNonNull(sb, "appendable");
        try {
            this.f11748a.h(new u(mVar, this), sb);
            return sb.toString();
        } catch (IOException e2) {
            throw new RuntimeException(e2.getMessage(), e2);
        }
    }

    public final String toString() {
        String eVar = this.f11748a.toString();
        return eVar.startsWith("[") ? eVar : eVar.substring(1, eVar.length() - 1);
    }
}
