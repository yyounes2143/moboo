package j$.time.format;

import j$.util.Objects;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
/* loaded from: classes2.dex */
public final class g extends j {
    public final boolean g;

    public g(j$.time.temporal.a aVar, int i, int i2, boolean z) {
        this(aVar, i, i2, z, 0);
        Objects.requireNonNull(aVar, "field");
        j$.time.temporal.t tVar = aVar.b;
        if (tVar.f11791a != tVar.b || tVar.c != tVar.d) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + aVar);
        } else if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        } else if (i2 >= i) {
        } else {
            throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    public g(j$.time.temporal.p pVar, int i, int i2, boolean z, int i3) {
        super(pVar, i, i2, A.NOT_NEGATIVE, i3);
        this.g = z;
    }

    @Override // j$.time.format.j
    public final j b() {
        if (this.e == -1) {
            return this;
        }
        return new g(this.f11754a, this.b, this.c, this.g, -1);
    }

    @Override // j$.time.format.j
    public final j c(int i) {
        return new g(this.f11754a, this.b, this.c, this.g, this.e + i);
    }

    @Override // j$.time.format.j, j$.time.format.f
    public final boolean h(u uVar, StringBuilder sb) {
        j$.time.temporal.p pVar = this.f11754a;
        Long a2 = uVar.a(pVar);
        if (a2 == null) {
            return false;
        }
        y yVar = uVar.b.c;
        long longValue = a2.longValue();
        j$.time.temporal.t h = pVar.h();
        h.b(longValue, pVar);
        BigDecimal valueOf = BigDecimal.valueOf(h.f11791a);
        BigDecimal add = BigDecimal.valueOf(h.d).subtract(valueOf).add(BigDecimal.ONE);
        BigDecimal subtract = BigDecimal.valueOf(longValue).subtract(valueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal divide = subtract.divide(add, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (divide.compareTo(bigDecimal) != 0) {
            bigDecimal = divide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : divide.stripTrailingZeros();
        }
        int scale = bigDecimal.scale();
        boolean z = this.g;
        int i = this.b;
        if (scale != 0) {
            String substring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), i), this.c), roundingMode).toPlainString().substring(2);
            yVar.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(substring);
            return true;
        } else if (i > 0) {
            if (z) {
                yVar.getClass();
                sb.append('.');
            }
            for (int i2 = 0; i2 < i; i2++) {
                yVar.getClass();
                sb.append('0');
            }
            return true;
        } else {
            return true;
        }
    }

    @Override // j$.time.format.j
    public final String toString() {
        String str = this.g ? ",DecimalPoint" : "";
        return "Fraction(" + this.f11754a + "," + this.b + "," + this.c + str + ")";
    }
}
