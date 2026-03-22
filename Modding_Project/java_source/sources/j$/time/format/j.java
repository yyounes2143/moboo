package j$.time.format;

import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
/* loaded from: classes2.dex */
public class j implements f {
    public static final long[] f = {0, 10, 100, 1000, 10000, SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US, 1000000, 10000000, 100000000, 1000000000, 10000000000L};

    /* renamed from: a  reason: collision with root package name */
    public final j$.time.temporal.p f11754a;
    public final int b;
    public final int c;
    public final A d;
    public final int e;

    public long a(u uVar, long j) {
        return j;
    }

    public j(j$.time.temporal.p pVar, int i, int i2, A a2) {
        this.f11754a = pVar;
        this.b = i;
        this.c = i2;
        this.d = a2;
        this.e = 0;
    }

    public j(j$.time.temporal.p pVar, int i, int i2, A a2, int i3) {
        this.f11754a = pVar;
        this.b = i;
        this.c = i2;
        this.d = a2;
        this.e = i3;
    }

    public j b() {
        if (this.e == -1) {
            return this;
        }
        return new j(this.f11754a, this.b, this.c, this.d, -1);
    }

    public j c(int i) {
        int i2 = this.e + i;
        return new j(this.f11754a, this.b, this.c, this.d, i2);
    }

    @Override // j$.time.format.f
    public boolean h(u uVar, StringBuilder sb) {
        j$.time.temporal.p pVar = this.f11754a;
        Long a2 = uVar.a(pVar);
        if (a2 == null) {
            return false;
        }
        long a3 = a(uVar, a2.longValue());
        y yVar = uVar.b.c;
        String l = a3 == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(a3));
        int length = l.length();
        int i = this.c;
        if (length > i) {
            throw new RuntimeException("Field " + pVar + " cannot be printed as the value " + a3 + " exceeds the maximum print width of " + i);
        }
        yVar.getClass();
        int i2 = (a3 > 0L ? 1 : (a3 == 0L ? 0 : -1));
        int i3 = this.b;
        A a4 = this.d;
        if (i2 >= 0) {
            int i4 = c.f11750a[a4.ordinal()];
            if (i4 != 1) {
                if (i4 == 2) {
                    sb.append('+');
                }
            } else if (i3 < 19 && a3 >= f[i3]) {
                sb.append('+');
            }
        } else {
            int i5 = c.f11750a[a4.ordinal()];
            if (i5 == 1 || i5 == 2 || i5 == 3) {
                sb.append('-');
            } else if (i5 == 4) {
                throw new RuntimeException("Field " + pVar + " cannot be printed as the value " + a3 + " cannot be negative according to the SignStyle");
            }
        }
        for (int i6 = 0; i6 < i3 - l.length(); i6++) {
            sb.append('0');
        }
        sb.append(l);
        return true;
    }

    public String toString() {
        int i = this.c;
        j$.time.temporal.p pVar = this.f11754a;
        A a2 = this.d;
        int i2 = this.b;
        if (i2 == 1 && i == 19 && a2 == A.NORMAL) {
            return "Value(" + pVar + ")";
        } else if (i2 == i && a2 == A.NOT_NEGATIVE) {
            return "Value(" + pVar + "," + i2 + ")";
        } else {
            return "Value(" + pVar + "," + i2 + "," + i + "," + a2 + ")";
        }
    }
}
