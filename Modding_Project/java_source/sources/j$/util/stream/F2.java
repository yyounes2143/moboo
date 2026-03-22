package j$.util.stream;

import j$.util.Collection;
import j$.util.List;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Comparator;
/* loaded from: classes2.dex */
public final class F2 extends AbstractC2299x2 {
    public ArrayList d;

    @Override // j$.util.stream.AbstractC2205e2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }

    @Override // j$.util.stream.AbstractC2205e2, j$.util.stream.InterfaceC2225i2
    public final void l() {
        ArrayList arrayList = this.d;
        boolean z = arrayList instanceof List;
        Comparator comparator = this.b;
        if (z) {
            ((List) arrayList).sort(comparator);
        } else {
            List.CC.$default$sort(arrayList, comparator);
        }
        InterfaceC2225i2 interfaceC2225i2 = this.f11903a;
        interfaceC2225i2.m(this.d.size());
        int i = 0;
        if (!this.c) {
            ArrayList arrayList2 = this.d;
            Objects.requireNonNull(interfaceC2225i2);
            j$.util.function.g gVar = new j$.util.function.g(interfaceC2225i2, 7);
            if (arrayList2 instanceof Collection) {
                ((Collection) arrayList2).forEach(gVar);
            } else {
                Objects.requireNonNull(gVar);
                int size = arrayList2.size();
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    gVar.accept(obj);
                }
            }
        } else {
            ArrayList arrayList3 = this.d;
            int size2 = arrayList3.size();
            while (i < size2) {
                Object obj2 = arrayList3.get(i);
                i++;
                if (interfaceC2225i2.o()) {
                    break;
                }
                interfaceC2225i2.accept((InterfaceC2225i2) obj2);
            }
        }
        interfaceC2225i2.l();
        this.d = null;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.d.add(obj);
    }
}
