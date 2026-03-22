package j$.time.format;

import j$.time.LocalDate;
import j$.util.Objects;
/* loaded from: classes2.dex */
public final class m extends j {
    public static final LocalDate h = LocalDate.N(2000, 1, 1);
    public final LocalDate g;

    public m(j$.time.temporal.p pVar, int i, int i2, LocalDate localDate, int i3) {
        super(pVar, i, i2, A.NOT_NEGATIVE, i3);
        this.g = localDate;
    }

    @Override // j$.time.format.j
    public final long a(u uVar, long j) {
        long abs = Math.abs(j);
        LocalDate localDate = this.g;
        long i = localDate != null ? j$.com.android.tools.r8.a.I(uVar.f11762a).j(localDate).i(this.f11754a) : 0;
        int i2 = (j > i ? 1 : (j == i ? 0 : -1));
        long[] jArr = j.f;
        if (i2 >= 0) {
            long j2 = jArr[this.b];
            if (j < i + j2) {
                return abs % j2;
            }
        }
        return abs % jArr[this.c];
    }

    @Override // j$.time.format.j
    public final j b() {
        if (this.e == -1) {
            return this;
        }
        return new m(this.f11754a, this.b, this.c, this.g, -1);
    }

    @Override // j$.time.format.j
    public final j c(int i) {
        int i2 = this.e + i;
        return new m(this.f11754a, this.b, this.c, this.g, i2);
    }

    @Override // j$.time.format.j
    public final String toString() {
        Object obj = this.g;
        if (obj == null) {
            obj = Objects.requireNonNull(0, "defaultObj");
        }
        return "ReducedValue(" + this.f11754a + "," + this.b + "," + this.c + "," + obj + ")";
    }
}
