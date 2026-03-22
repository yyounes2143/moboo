package j$.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import j$.util.Objects;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.io.StreamCorruptedException;
/* loaded from: classes2.dex */
public final class p implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;

    /* renamed from: a  reason: collision with root package name */
    public byte f11776a;
    public Object b;

    public p() {
    }

    public p(byte b, Object obj) {
        this.f11776a = b;
        this.b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.f11776a;
        Object obj = this.b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                Duration duration = (Duration) obj;
                objectOutput.writeLong(duration.f11708a);
                objectOutput.writeInt(duration.b);
                return;
            case 2:
                Instant instant = (Instant) obj;
                objectOutput.writeLong(instant.f11709a);
                objectOutput.writeInt(instant.b);
                return;
            case 3:
                LocalDate localDate = (LocalDate) obj;
                objectOutput.writeInt(localDate.f11710a);
                objectOutput.writeByte(localDate.b);
                objectOutput.writeByte(localDate.c);
                return;
            case 4:
                ((LocalTime) obj).T(objectOutput);
                return;
            case 5:
                LocalDateTime localDateTime = (LocalDateTime) obj;
                LocalDate localDate2 = localDateTime.f11711a;
                objectOutput.writeInt(localDate2.f11710a);
                objectOutput.writeByte(localDate2.b);
                objectOutput.writeByte(localDate2.c);
                localDateTime.b.T(objectOutput);
                return;
            case 6:
                ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
                LocalDateTime localDateTime2 = zonedDateTime.f11715a;
                LocalDate localDate3 = localDateTime2.f11711a;
                objectOutput.writeInt(localDate3.f11710a);
                objectOutput.writeByte(localDate3.b);
                objectOutput.writeByte(localDate3.c);
                localDateTime2.b.T(objectOutput);
                zonedDateTime.b.P(objectOutput);
                zonedDateTime.c.J(objectOutput);
                return;
            case 7:
                objectOutput.writeUTF(((u) obj).b);
                return;
            case 8:
                ((ZoneOffset) obj).P(objectOutput);
                return;
            case 9:
                n nVar = (n) obj;
                nVar.f11774a.T(objectOutput);
                nVar.b.P(objectOutput);
                return;
            case 10:
                OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
                LocalDateTime localDateTime3 = offsetDateTime.f11713a;
                LocalDate localDate4 = localDateTime3.f11711a;
                objectOutput.writeInt(localDate4.f11710a);
                objectOutput.writeByte(localDate4.b);
                objectOutput.writeByte(localDate4.c);
                localDateTime3.b.T(objectOutput);
                offsetDateTime.b.P(objectOutput);
                return;
            case 11:
                objectOutput.writeInt(((r) obj).f11778a);
                return;
            case 12:
                t tVar = (t) obj;
                objectOutput.writeInt(tVar.f11780a);
                objectOutput.writeByte(tVar.b);
                return;
            case 13:
                l lVar = (l) obj;
                objectOutput.writeByte(lVar.f11772a);
                objectOutput.writeByte(lVar.b);
                return;
            case 14:
                o oVar = (o) obj;
                objectOutput.writeInt(oVar.f11775a);
                objectOutput.writeInt(oVar.b);
                objectOutput.writeInt(oVar.c);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        byte readByte = objectInput.readByte();
        this.f11776a = readByte;
        this.b = a(readByte, objectInput);
    }

    public static Serializable a(byte b, ObjectInput objectInput) {
        switch (b) {
            case 1:
                Duration duration = Duration.ZERO;
                return Duration.ofSeconds(objectInput.readLong(), objectInput.readInt());
            case 2:
                Instant instant = Instant.c;
                return Instant.ofEpochSecond(objectInput.readLong(), objectInput.readInt());
            case 3:
                LocalDate localDate = LocalDate.d;
                return LocalDate.N(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return LocalTime.P(objectInput);
            case 5:
                LocalDateTime localDateTime = LocalDateTime.c;
                LocalDate localDate2 = LocalDate.d;
                return LocalDateTime.I(LocalDate.N(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.P(objectInput));
            case 6:
                LocalDateTime localDateTime2 = LocalDateTime.c;
                LocalDate localDate3 = LocalDate.d;
                LocalDateTime I = LocalDateTime.I(LocalDate.N(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.P(objectInput));
                ZoneOffset O = ZoneOffset.O(objectInput);
                ZoneId zoneId = (ZoneId) a(objectInput.readByte(), objectInput);
                Objects.requireNonNull(I, "localDateTime");
                Objects.requireNonNull(O, TypedValues.CycleType.S_WAVE_OFFSET);
                Objects.requireNonNull(zoneId, "zone");
                if (!(zoneId instanceof ZoneOffset) || O.equals(zoneId)) {
                    return new ZonedDateTime(I, zoneId, O);
                }
                throw new IllegalArgumentException("ZoneId must match ZoneOffset");
            case 7:
                int i = u.d;
                return ZoneId.G(objectInput.readUTF(), false);
            case 8:
                return ZoneOffset.O(objectInput);
            case 9:
                int i2 = n.c;
                return new n(LocalTime.P(objectInput), ZoneOffset.O(objectInput));
            case 10:
                int i3 = OffsetDateTime.c;
                LocalDate localDate4 = LocalDate.d;
                return new OffsetDateTime(LocalDateTime.I(LocalDate.N(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.P(objectInput)), ZoneOffset.O(objectInput));
            case 11:
                int i4 = r.b;
                return r.F(objectInput.readInt());
            case 12:
                int i5 = t.c;
                int readInt = objectInput.readInt();
                byte readByte = objectInput.readByte();
                j$.time.temporal.a.YEAR.u(readInt);
                j$.time.temporal.a.MONTH_OF_YEAR.u(readByte);
                return new t(readInt, readByte);
            case 13:
                int i6 = l.c;
                byte readByte2 = objectInput.readByte();
                byte readByte3 = objectInput.readByte();
                j I2 = j.I(readByte2);
                Objects.requireNonNull(I2, "month");
                j$.time.temporal.a.DAY_OF_MONTH.u(readByte3);
                if (readByte3 <= I2.H()) {
                    return new l(I2.getValue(), readByte3);
                }
                String name = I2.name();
                throw new RuntimeException("Illegal value for DayOfMonth field, value " + ((int) readByte3) + " is not valid for month " + name);
            case 14:
                o oVar = o.d;
                int readInt2 = objectInput.readInt();
                int readInt3 = objectInput.readInt();
                int readInt4 = objectInput.readInt();
                return ((readInt2 | readInt3) | readInt4) == 0 ? o.d : new o(readInt2, readInt3, readInt4);
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    private Object readResolve() {
        return this.b;
    }
}
