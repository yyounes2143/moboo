package j$.time.format;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Calendar;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class p extends j {
    public final char g;
    public final int h;

    @Override // j$.time.format.j, j$.time.format.f
    public final boolean h(u uVar, StringBuilder sb) {
        j$.time.temporal.u uVar2;
        f fVar;
        Locale locale = uVar.b.b;
        ConcurrentHashMap concurrentHashMap = j$.time.temporal.v.g;
        Objects.requireNonNull(locale, "locale");
        Calendar calendar = Calendar.getInstance(new Locale(locale.getLanguage(), locale.getCountry()));
        j$.time.temporal.v a2 = j$.time.temporal.v.a(j$.time.d.f11743a[((((int) ((calendar.getFirstDayOfWeek() - 1) % 7)) + 7) + j$.time.d.SUNDAY.ordinal()) % 7], calendar.getMinimalDaysInFirstWeek());
        char c = this.g;
        if (c == 'W') {
            uVar2 = a2.d;
        } else if (c == 'Y') {
            j$.time.temporal.u uVar3 = a2.f;
            int i = this.h;
            if (i == 2) {
                fVar = new m(uVar3, 2, 2, m.h, this.e);
            } else {
                fVar = new j(uVar3, i, 19, i < 4 ? A.NORMAL : A.EXCEEDS_PAD, this.e);
            }
            return fVar.h(uVar, sb);
        } else if (c == 'c' || c == 'e') {
            uVar2 = a2.c;
        } else if (c == 'w') {
            uVar2 = a2.e;
        } else {
            throw new IllegalStateException("unreachable");
        }
        j$.time.temporal.u uVar4 = uVar2;
        fVar = new j(uVar4, this.b, this.c, A.NOT_NEGATIVE, this.e);
        return fVar.h(uVar, sb);
    }

    public p(char c, int i, int i2, int i3, int i4) {
        super(null, i2, i3, A.NOT_NEGATIVE, i4);
        this.g = c;
        this.h = i;
    }

    @Override // j$.time.format.j
    public final j b() {
        if (this.e == -1) {
            return this;
        }
        return new p(this.g, this.h, this.b, this.c, -1);
    }

    @Override // j$.time.format.j
    public final j c(int i) {
        int i2 = this.e + i;
        return new p(this.g, this.h, this.b, this.c, i2);
    }

    @Override // j$.time.format.j
    public final String toString() {
        StringBuilder sb = new StringBuilder(30);
        sb.append("Localized(");
        int i = this.h;
        char c = this.g;
        if (c != 'Y') {
            if (c == 'W') {
                sb.append("WeekOfMonth");
            } else if (c == 'c' || c == 'e') {
                sb.append("DayOfWeek");
            } else if (c == 'w') {
                sb.append("WeekOfWeekBasedYear");
            }
            sb.append(",");
            sb.append(i);
        } else if (i == 1) {
            sb.append("WeekBasedYear");
        } else if (i == 2) {
            sb.append("ReducedValue(WeekBasedYear,2,2,2000-01-01)");
        } else {
            sb.append("WeekBasedYear,");
            sb.append(i);
            sb.append(",19,");
            sb.append(i < 4 ? A.NORMAL : A.EXCEEDS_PAD);
        }
        sb.append(")");
        return sb.toString();
    }
}
