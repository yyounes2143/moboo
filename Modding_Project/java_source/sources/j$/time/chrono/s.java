package j$.time.chrono;

import androidx.exifinterface.media.ExifInterface;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public final class s extends AbstractC2152a implements Serializable {
    public static final s c = new s();
    private static final long serialVersionUID = -1440403870442975015L;

    @Override // j$.time.chrono.l
    public final m D(int i) {
        if (i != 0) {
            if (i == 1) {
                return t.CE;
            }
            throw new RuntimeException("Invalid era: " + i);
        }
        return t.BCE;
    }

    @Override // j$.time.chrono.l
    public final String getId() {
        return ExifInterface.TAG_RW2_ISO;
    }

    @Override // j$.time.chrono.l
    public final String q() {
        return "iso8601";
    }

    @Override // j$.time.chrono.l
    public final InterfaceC2153b w(int i) {
        return LocalDate.N(i, 1, 1);
    }

    @Override // j$.time.chrono.l
    public final InterfaceC2153b j(j$.time.temporal.m mVar) {
        return LocalDate.H(mVar);
    }

    private s() {
    }

    @Override // j$.time.chrono.AbstractC2152a, j$.time.chrono.l
    public final InterfaceC2156e m(LocalDateTime localDateTime) {
        return LocalDateTime.G(localDateTime);
    }

    @Override // j$.time.chrono.l
    public final boolean C(long j) {
        if ((3 & j) == 0) {
            return j % 100 != 0 || j % 400 == 0;
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public Object writeReplace() {
        return new E((byte) 1, this);
    }
}
