package j$.util.stream;

import java.util.Comparator;
/* renamed from: j$.util.stream.x2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2299x2 extends AbstractC2205e2 {
    public final Comparator b;
    public boolean c;

    public AbstractC2299x2(InterfaceC2225i2 interfaceC2225i2, Comparator comparator) {
        super(interfaceC2225i2);
        this.b = comparator;
    }

    @Override // j$.util.stream.AbstractC2205e2, j$.util.stream.InterfaceC2225i2
    public final boolean o() {
        this.c = true;
        return false;
    }
}
