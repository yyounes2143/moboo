package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
/* loaded from: classes2.dex */
public final class E implements Externalizable {
    private static final long serialVersionUID = -6103370247208168577L;

    /* renamed from: a  reason: collision with root package name */
    public byte f11720a;
    public Object b;

    public E() {
    }

    public E(byte b, Object obj) {
        this.f11720a = b;
        this.b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.f11720a;
        Object obj = this.b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                objectOutput.writeUTF(((AbstractC2152a) obj).getId());
                return;
            case 2:
                C2158g c2158g = (C2158g) obj;
                objectOutput.writeObject(c2158g.f11728a);
                objectOutput.writeObject(c2158g.b);
                return;
            case 3:
                k kVar = (k) obj;
                objectOutput.writeObject(kVar.f11732a);
                objectOutput.writeObject(kVar.b);
                objectOutput.writeObject(kVar.c);
                return;
            case 4:
                x xVar = (x) obj;
                xVar.getClass();
                objectOutput.writeInt(j$.time.temporal.q.a(xVar, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.q.a(xVar, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.q.a(xVar, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 5:
                objectOutput.writeByte(((y) obj).f11741a);
                return;
            case 6:
                q qVar = (q) obj;
                objectOutput.writeObject(qVar.f11735a);
                objectOutput.writeInt(j$.time.temporal.q.a(qVar, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.q.a(qVar, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.q.a(qVar, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 7:
                C c = (C) obj;
                c.getClass();
                objectOutput.writeInt(j$.time.temporal.q.a(c, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.q.a(c, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.q.a(c, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 8:
                I i = (I) obj;
                i.getClass();
                objectOutput.writeInt(j$.time.temporal.q.a(i, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.q.a(i, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.q.a(i, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 9:
                C2159h c2159h = (C2159h) obj;
                objectOutput.writeUTF(c2159h.f11729a.getId());
                objectOutput.writeInt(c2159h.b);
                objectOutput.writeInt(c2159h.c);
                objectOutput.writeInt(c2159h.d);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        Object R;
        byte readByte = objectInput.readByte();
        this.f11720a = readByte;
        switch (readByte) {
            case 1:
                ConcurrentHashMap concurrentHashMap = AbstractC2152a.f11725a;
                R = j$.com.android.tools.r8.a.R(objectInput.readUTF());
                break;
            case 2:
                R = ((InterfaceC2153b) objectInput.readObject()).t((LocalTime) objectInput.readObject());
                break;
            case 3:
                R = ((InterfaceC2156e) objectInput.readObject()).o((ZoneOffset) objectInput.readObject()).g((ZoneId) objectInput.readObject());
                break;
            case 4:
                LocalDate localDate = x.d;
                int readInt = objectInput.readInt();
                byte readByte2 = objectInput.readByte();
                byte readByte3 = objectInput.readByte();
                v.c.getClass();
                R = new x(LocalDate.N(readInt, readByte2, readByte3));
                break;
            case 5:
                y yVar = y.d;
                R = y.q(objectInput.readByte());
                break;
            case 6:
                o oVar = (o) objectInput.readObject();
                int readInt2 = objectInput.readInt();
                byte readByte4 = objectInput.readByte();
                byte readByte5 = objectInput.readByte();
                oVar.getClass();
                R = new q(oVar, readInt2, readByte4, readByte5);
                break;
            case 7:
                int readInt3 = objectInput.readInt();
                byte readByte6 = objectInput.readByte();
                byte readByte7 = objectInput.readByte();
                A.c.getClass();
                R = new C(LocalDate.N(readInt3 + 1911, readByte6, readByte7));
                break;
            case 8:
                int readInt4 = objectInput.readInt();
                byte readByte8 = objectInput.readByte();
                byte readByte9 = objectInput.readByte();
                G.c.getClass();
                R = new I(LocalDate.N(readInt4 - 543, readByte8, readByte9));
                break;
            case 9:
                int i = C2159h.e;
                R = new C2159h(j$.com.android.tools.r8.a.R(objectInput.readUTF()), objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
                break;
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
        this.b = R;
    }

    private Object readResolve() {
        return this.b;
    }
}
