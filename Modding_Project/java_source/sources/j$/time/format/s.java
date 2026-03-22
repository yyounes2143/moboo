package j$.time.format;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* loaded from: classes2.dex */
public final class s {
    public static final C2162a h = new C2162a(0);
    public static final HashMap i;

    /* renamed from: a  reason: collision with root package name */
    public s f11760a;
    public final s b;
    public final ArrayList c;
    public final boolean d;
    public int e;
    public char f;
    public int g;

    static {
        HashMap hashMap = new HashMap();
        i = hashMap;
        hashMap.put('G', j$.time.temporal.a.ERA);
        hashMap.put('y', j$.time.temporal.a.YEAR_OF_ERA);
        hashMap.put(Character.valueOf(AbstractJsonLexerKt.UNICODE_ESC), j$.time.temporal.a.YEAR);
        j$.time.temporal.g gVar = j$.time.temporal.i.f11786a;
        hashMap.put('Q', gVar);
        hashMap.put('q', gVar);
        j$.time.temporal.a aVar = j$.time.temporal.a.MONTH_OF_YEAR;
        hashMap.put('M', aVar);
        hashMap.put('L', aVar);
        hashMap.put('D', j$.time.temporal.a.DAY_OF_YEAR);
        hashMap.put('d', j$.time.temporal.a.DAY_OF_MONTH);
        hashMap.put('F', j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        j$.time.temporal.a aVar2 = j$.time.temporal.a.DAY_OF_WEEK;
        hashMap.put('E', aVar2);
        hashMap.put('c', aVar2);
        hashMap.put('e', aVar2);
        hashMap.put('a', j$.time.temporal.a.AMPM_OF_DAY);
        hashMap.put('H', j$.time.temporal.a.HOUR_OF_DAY);
        hashMap.put('k', j$.time.temporal.a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', j$.time.temporal.a.HOUR_OF_AMPM);
        hashMap.put('h', j$.time.temporal.a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', j$.time.temporal.a.MINUTE_OF_HOUR);
        hashMap.put('s', j$.time.temporal.a.SECOND_OF_MINUTE);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.NANO_OF_SECOND;
        hashMap.put('S', aVar3);
        hashMap.put('A', j$.time.temporal.a.MILLI_OF_DAY);
        hashMap.put('n', aVar3);
        hashMap.put('N', j$.time.temporal.a.NANO_OF_DAY);
        hashMap.put('g', j$.time.temporal.k.f11788a);
    }

    public s() {
        this.f11760a = this;
        this.c = new ArrayList();
        this.g = -1;
        this.b = null;
        this.d = false;
    }

    public s(s sVar) {
        this.f11760a = this;
        this.c = new ArrayList();
        this.g = -1;
        this.b = sVar;
        this.d = true;
    }

    public final void j(j$.time.temporal.p pVar) {
        Objects.requireNonNull(pVar, "field");
        i(new j(pVar, 1, 19, A.NORMAL));
    }

    public final void k(j$.time.temporal.p pVar, int i2) {
        Objects.requireNonNull(pVar, "field");
        if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i2);
        }
        i(new j(pVar, i2, i2, A.NOT_NEGATIVE));
    }

    public final void l(j$.time.temporal.p pVar, int i2, int i3, A a2) {
        if (i2 == i3 && a2 == A.NOT_NEGATIVE) {
            k(pVar, i3);
            return;
        }
        Objects.requireNonNull(pVar, "field");
        Objects.requireNonNull(a2, "signStyle");
        if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i3 < 1 || i3 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i3);
        } else if (i3 < i2) {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i3 + " < " + i2);
        } else {
            i(new j(pVar, i2, i3, a2));
        }
    }

    public final void i(j jVar) {
        j b;
        s sVar = this.f11760a;
        int i2 = sVar.g;
        if (i2 >= 0) {
            j jVar2 = (j) sVar.c.get(i2);
            int i3 = jVar.b;
            int i4 = jVar.c;
            if (i3 == i4) {
                if (jVar.d == A.NOT_NEGATIVE) {
                    b = jVar2.c(i4);
                    b(jVar.b());
                    this.f11760a.g = i2;
                    this.f11760a.c.set(i2, b);
                    return;
                }
            }
            b = jVar2.b();
            this.f11760a.g = b(jVar);
            this.f11760a.c.set(i2, b);
            return;
        }
        sVar.g = b(jVar);
    }

    public final void h(j$.time.temporal.p pVar, B b) {
        Objects.requireNonNull(pVar, "field");
        Objects.requireNonNull(b, "textStyle");
        b(new o(pVar, b, x.c));
    }

    public final void g(j$.time.temporal.a aVar, HashMap hashMap) {
        Objects.requireNonNull(aVar, "field");
        Objects.requireNonNull(hashMap, "textLookup");
        LinkedHashMap linkedHashMap = new LinkedHashMap(hashMap);
        B b = B.FULL;
        b(new o(aVar, b, new C2163b(new w(Collections.singletonMap(b, linkedHashMap)))));
    }

    public final void f(String str, String str2) {
        b(new k(str, str2));
    }

    public final void e(B b) {
        Objects.requireNonNull(b, "style");
        if (b != B.FULL && b != B.SHORT) {
            throw new IllegalArgumentException("Style must be either full or short");
        }
        b(new i(b, 0));
    }

    public final void c(char c) {
        b(new d(c));
    }

    public final void d(String str) {
        Objects.requireNonNull(str, "literal");
        if (str.isEmpty()) {
            return;
        }
        if (str.length() == 1) {
            b(new d(str.charAt(0)));
        } else {
            b(new i(str, 1));
        }
    }

    public final void a(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        e eVar = dateTimeFormatter.f11748a;
        if (eVar.b) {
            eVar = new e(eVar.f11752a, false);
        }
        b(eVar);
    }

    public final void n() {
        s sVar = this.f11760a;
        sVar.g = -1;
        this.f11760a = new s(sVar);
    }

    public final void m() {
        s sVar = this.f11760a;
        if (sVar.b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        if (sVar.c.size() > 0) {
            s sVar2 = this.f11760a;
            e eVar = new e(sVar2.c, sVar2.d);
            this.f11760a = this.f11760a.b;
            b(eVar);
            return;
        }
        this.f11760a = this.f11760a.b;
    }

    public final int b(f fVar) {
        Objects.requireNonNull(fVar, "pp");
        s sVar = this.f11760a;
        int i2 = sVar.e;
        if (i2 > 0) {
            if (fVar != null) {
                fVar = new l(fVar, i2, sVar.f);
            }
            sVar.e = 0;
            sVar.f = (char) 0;
        }
        sVar.c.add(fVar);
        s sVar2 = this.f11760a;
        sVar2.g = -1;
        return sVar2.c.size() - 1;
    }

    public final DateTimeFormatter o(z zVar, j$.time.chrono.s sVar) {
        return p(Locale.getDefault(), zVar, sVar);
    }

    public final DateTimeFormatter p(Locale locale, z zVar, j$.time.chrono.s sVar) {
        Objects.requireNonNull(locale, "locale");
        while (this.f11760a.b != null) {
            m();
        }
        e eVar = new e(this.c, false);
        y yVar = y.f11765a;
        return new DateTimeFormatter(eVar, locale, zVar, sVar);
    }
}
