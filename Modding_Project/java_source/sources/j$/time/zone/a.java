package j$.time.zone;

import j$.time.ZoneOffset;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.util.TimeZone;
/* loaded from: classes2.dex */
public final class a implements Externalizable {
    private static final long serialVersionUID = -8885321777449118786L;

    /* renamed from: a  reason: collision with root package name */
    public byte f11795a;
    public Serializable b;

    public a() {
    }

    public a(byte b, Serializable serializable) {
        this.f11795a = b;
        this.b = serializable;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.f11795a;
        Serializable serializable = this.b;
        objectOutput.writeByte(b);
        if (b != 1) {
            if (b == 2) {
                b bVar = (b) serializable;
                c(bVar.f11796a, objectOutput);
                d(bVar.c, objectOutput);
                d(bVar.d, objectOutput);
                return;
            } else if (b == 3) {
                ((e) serializable).writeExternal(objectOutput);
                return;
            } else if (b != 100) {
                throw new InvalidClassException("Unknown serialized type");
            } else {
                objectOutput.writeUTF(((f) serializable).g.getID());
                return;
            }
        }
        f fVar = (f) serializable;
        long[] jArr = fVar.f11800a;
        objectOutput.writeInt(jArr.length);
        for (long j : jArr) {
            c(j, objectOutput);
        }
        for (ZoneOffset zoneOffset : fVar.b) {
            d(zoneOffset, objectOutput);
        }
        long[] jArr2 = fVar.c;
        objectOutput.writeInt(jArr2.length);
        for (long j2 : jArr2) {
            c(j2, objectOutput);
        }
        for (ZoneOffset zoneOffset2 : fVar.e) {
            d(zoneOffset2, objectOutput);
        }
        e[] eVarArr = fVar.f;
        objectOutput.writeByte(eVarArr.length);
        for (e eVar : eVarArr) {
            eVar.writeExternal(objectOutput);
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        Serializable fVar;
        byte readByte = objectInput.readByte();
        this.f11795a = readByte;
        if (readByte == 1) {
            int readInt = objectInput.readInt();
            long[] jArr = f.i;
            long[] jArr2 = readInt == 0 ? jArr : new long[readInt];
            for (int i = 0; i < readInt; i++) {
                jArr2[i] = a(objectInput);
            }
            int i2 = readInt + 1;
            ZoneOffset[] zoneOffsetArr = new ZoneOffset[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                zoneOffsetArr[i3] = b(objectInput);
            }
            int readInt2 = objectInput.readInt();
            if (readInt2 != 0) {
                jArr = new long[readInt2];
            }
            long[] jArr3 = jArr;
            for (int i4 = 0; i4 < readInt2; i4++) {
                jArr3[i4] = a(objectInput);
            }
            int i5 = readInt2 + 1;
            ZoneOffset[] zoneOffsetArr2 = new ZoneOffset[i5];
            for (int i6 = 0; i6 < i5; i6++) {
                zoneOffsetArr2[i6] = b(objectInput);
            }
            int readByte2 = objectInput.readByte();
            e[] eVarArr = readByte2 == 0 ? f.j : new e[readByte2];
            for (int i7 = 0; i7 < readByte2; i7++) {
                eVarArr[i7] = e.a(objectInput);
            }
            fVar = new f(jArr2, zoneOffsetArr, jArr3, zoneOffsetArr2, eVarArr);
        } else if (readByte == 2) {
            long a2 = a(objectInput);
            ZoneOffset b = b(objectInput);
            ZoneOffset b2 = b(objectInput);
            if (b.equals(b2)) {
                throw new IllegalArgumentException("Offsets must not be equal");
            }
            fVar = new b(a2, b, b2);
        } else if (readByte == 3) {
            fVar = e.a(objectInput);
        } else if (readByte != 100) {
            throw new StreamCorruptedException("Unknown serialized type");
        } else {
            fVar = new f(TimeZone.getTimeZone(objectInput.readUTF()));
        }
        this.b = fVar;
    }

    private Object readResolve() {
        return this.b;
    }

    public static ZoneOffset b(ObjectInput objectInput) {
        byte readByte = objectInput.readByte();
        return readByte == Byte.MAX_VALUE ? ZoneOffset.M(objectInput.readInt()) : ZoneOffset.M(readByte * 900);
    }

    public static void c(long j, ObjectOutput objectOutput) {
        if (j >= -4575744000L && j < 10413792000L && j % 900 == 0) {
            int i = (int) ((j + 4575744000L) / 900);
            objectOutput.writeByte((i >>> 16) & 255);
            objectOutput.writeByte((i >>> 8) & 255);
            objectOutput.writeByte(i & 255);
            return;
        }
        objectOutput.writeByte(255);
        objectOutput.writeLong(j);
    }

    public static long a(ObjectInput objectInput) {
        int readByte = objectInput.readByte() & 255;
        if (readByte == 255) {
            return objectInput.readLong();
        }
        return ((((readByte << 16) + ((objectInput.readByte() & 255) << 8)) + (objectInput.readByte() & 255)) * 900) - 4575744000L;
    }

    public static void d(ZoneOffset zoneOffset, ObjectOutput objectOutput) {
        int i = zoneOffset.b;
        int i2 = i % 900 == 0 ? i / 900 : 127;
        objectOutput.writeByte(i2);
        if (i2 == 127) {
            objectOutput.writeInt(i);
        }
    }
}
