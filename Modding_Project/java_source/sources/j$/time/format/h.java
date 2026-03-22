package j$.time.format;

import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
/* loaded from: classes2.dex */
public final class h implements f {
    @Override // j$.time.format.f
    public final boolean h(u uVar, StringBuilder sb) {
        Long a2 = uVar.a(j$.time.temporal.a.INSTANT_SECONDS);
        j$.time.temporal.a aVar = j$.time.temporal.a.NANO_OF_SECOND;
        j$.time.temporal.m mVar = uVar.f11762a;
        Long valueOf = mVar.e(aVar) ? Long.valueOf(mVar.r(aVar)) : null;
        int i = 0;
        if (a2 == null) {
            return false;
        }
        long longValue = a2.longValue();
        int a3 = aVar.b.a(valueOf != null ? valueOf.longValue() : 0L, aVar);
        if (longValue >= -62167219200L) {
            long j = longValue - 253402300800L;
            long O = j$.com.android.tools.r8.a.O(j, 315569520000L) + 1;
            LocalDateTime J = LocalDateTime.J(j$.com.android.tools.r8.a.N(j, 315569520000L) - 62167219200L, 0, ZoneOffset.UTC);
            if (O > 0) {
                sb.append('+');
                sb.append(O);
            }
            sb.append(J);
            if (J.b.c == 0) {
                sb.append(":00");
            }
        } else {
            long j2 = longValue + 62167219200L;
            long j3 = j2 / 315569520000L;
            long j4 = j2 % 315569520000L;
            LocalDateTime J2 = LocalDateTime.J(j4 - 62167219200L, 0, ZoneOffset.UTC);
            int length = sb.length();
            sb.append(J2);
            if (J2.b.c == 0) {
                sb.append(":00");
            }
            if (j3 < 0) {
                if (J2.f11711a.f11710a == -10000) {
                    sb.replace(length, length + 2, Long.toString(j3 - 1));
                } else if (j4 == 0) {
                    sb.insert(length, j3);
                } else {
                    sb.insert(length + 1, Math.abs(j3));
                }
            }
        }
        if (a3 > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (a3 <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = a3 / i2;
                sb.append((char) (i3 + 48));
                a3 -= i3 * i2;
                i2 /= 10;
                i++;
            }
        }
        sb.append('Z');
        return true;
    }

    public final String toString() {
        return "Instant()";
    }
}
