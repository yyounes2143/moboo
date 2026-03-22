package j$.time.zone;

import androidx.work.WorkInfo;
import com.google.common.base.Ascii;
import j$.time.LocalTime;
import j$.time.ZoneOffset;
import j$.time.j;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* loaded from: classes2.dex */
public final class e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;

    /* renamed from: a  reason: collision with root package name */
    public final j f11799a;
    public final byte b;
    public final j$.time.d c;
    public final LocalTime d;
    public final boolean e;
    public final d f;
    public final ZoneOffset g;
    public final ZoneOffset h;
    public final ZoneOffset i;

    public e(j jVar, int i, j$.time.d dVar, LocalTime localTime, boolean z, d dVar2, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.f11799a = jVar;
        this.b = (byte) i;
        this.c = dVar;
        this.d = localTime;
        this.e = z;
        this.f = dVar2;
        this.g = zoneOffset;
        this.h = zoneOffset2;
        this.i = zoneOffset3;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a((byte) 3, this);
    }

    public final void writeExternal(ObjectOutput objectOutput) {
        LocalTime localTime = this.d;
        boolean z = this.e;
        int secondOfDay = z ? 86400 : localTime.toSecondOfDay();
        ZoneOffset zoneOffset = this.g;
        int i = this.h.b;
        int i2 = zoneOffset.b;
        int i3 = i - i2;
        int i4 = this.i.b;
        int i5 = i4 - i2;
        byte b = secondOfDay % 3600 == 0 ? z ? Ascii.CAN : localTime.f11712a : (byte) 31;
        int i6 = i2 % 900 == 0 ? (i2 / 900) + 128 : 255;
        int i7 = (i3 == 0 || i3 == 1800 || i3 == 3600) ? i3 / 1800 : 3;
        int i8 = (i5 == 0 || i5 == 1800 || i5 == 3600) ? i5 / 1800 : 3;
        j$.time.d dVar = this.c;
        objectOutput.writeInt((this.f11799a.getValue() << 28) + ((this.b + 32) << 22) + ((dVar == null ? 0 : dVar.getValue()) << 19) + (b << Ascii.SO) + (this.f.ordinal() << 12) + (i6 << 4) + (i7 << 2) + i8);
        if (b == 31) {
            objectOutput.writeInt(secondOfDay);
        }
        if (i6 == 255) {
            objectOutput.writeInt(i2);
        }
        if (i7 == 3) {
            objectOutput.writeInt(i);
        }
        if (i8 == 3) {
            objectOutput.writeInt(i4);
        }
    }

    public static e a(ObjectInput objectInput) {
        LocalTime localTime;
        int readInt = objectInput.readInt();
        j I = j.I(readInt >>> 28);
        int i = ((264241152 & readInt) >>> 22) - 32;
        int i2 = (3670016 & readInt) >>> 19;
        j$.time.d F = i2 == 0 ? null : j$.time.d.F(i2);
        int i3 = (507904 & readInt) >>> 14;
        d dVar = d.values()[(readInt & 12288) >>> 12];
        int i4 = (readInt & 4080) >>> 4;
        int i5 = (readInt & 12) >>> 2;
        int i6 = readInt & 3;
        if (i3 != 31) {
            int i7 = i3 % 24;
            LocalTime localTime2 = LocalTime.e;
            j$.time.temporal.a.HOUR_OF_DAY.u(i7);
            localTime = LocalTime.h[i7];
        } else {
            localTime = LocalTime.ofSecondOfDay(objectInput.readInt());
        }
        ZoneOffset M = ZoneOffset.M(i4 == 255 ? objectInput.readInt() : (i4 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT) * 900);
        int i8 = M.b;
        ZoneOffset M2 = ZoneOffset.M(i5 == 3 ? objectInput.readInt() : (i5 * 1800) + i8);
        ZoneOffset M3 = ZoneOffset.M(i6 == 3 ? objectInput.readInt() : (i6 * 1800) + i8);
        boolean z = i3 == 24;
        Objects.requireNonNull(I, "month");
        Objects.requireNonNull(localTime, "time");
        Objects.requireNonNull(dVar, "timeDefnition");
        Objects.requireNonNull(M, "standardOffset");
        Objects.requireNonNull(M2, "offsetBefore");
        Objects.requireNonNull(M3, "offsetAfter");
        if (i < -28 || i > 31 || i == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        if (z && !localTime.equals(LocalTime.g)) {
            throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
        }
        if (localTime.d != 0) {
            throw new IllegalArgumentException("Time's nano-of-second must be zero");
        }
        return new e(I, i, F, localTime, z, dVar, M, M2, M3);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (this.f11799a == eVar.f11799a && this.b == eVar.b && this.c == eVar.c && this.f == eVar.f && this.d.equals(eVar.d) && this.e == eVar.e && this.g.equals(eVar.g) && this.h.equals(eVar.h) && this.i.equals(eVar.i)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int secondOfDay = ((this.d.toSecondOfDay() + (this.e ? 1 : 0)) << 15) + (this.f11799a.ordinal() << 11) + ((this.b + 32) << 5);
        j$.time.d dVar = this.c;
        return ((this.g.b ^ (this.f.ordinal() + (secondOfDay + ((dVar == null ? 7 : dVar.ordinal()) << 2)))) ^ this.h.b) ^ this.i.b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionRule[");
        ZoneOffset zoneOffset = this.h;
        ZoneOffset zoneOffset2 = this.i;
        sb.append(zoneOffset2.b - zoneOffset.b > 0 ? "Gap " : "Overlap ");
        sb.append(zoneOffset);
        sb.append(" to ");
        sb.append(zoneOffset2);
        sb.append(", ");
        j jVar = this.f11799a;
        byte b = this.b;
        j$.time.d dVar = this.c;
        if (dVar == null) {
            sb.append(jVar.name());
            sb.append(' ');
            sb.append((int) b);
        } else if (b == -1) {
            sb.append(dVar.name());
            sb.append(" on or before last day of ");
            sb.append(jVar.name());
        } else if (b < 0) {
            sb.append(dVar.name());
            sb.append(" on or before last day minus ");
            sb.append((-b) - 1);
            sb.append(" of ");
            sb.append(jVar.name());
        } else {
            sb.append(dVar.name());
            sb.append(" on or after ");
            sb.append(jVar.name());
            sb.append(' ');
            sb.append((int) b);
        }
        sb.append(" at ");
        sb.append(this.e ? "24:00" : this.d.toString());
        sb.append(" ");
        sb.append(this.f);
        sb.append(", standard offset ");
        sb.append(this.g);
        sb.append(AbstractJsonLexerKt.END_LIST);
        return sb.toString();
    }
}
