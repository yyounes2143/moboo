package j$.util.stream;

import java.util.HashSet;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
/* renamed from: j$.util.stream.l  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2237l extends AbstractC2205e2 {
    public final /* synthetic */ int b;
    public Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2237l(AbstractC2182a abstractC2182a, InterfaceC2225i2 interfaceC2225i2, int i) {
        super(interfaceC2225i2);
        this.b = i;
        this.c = abstractC2182a;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2237l(InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.b = 0;
    }

    @Override // j$.util.stream.AbstractC2205e2, j$.util.stream.InterfaceC2225i2
    public void l() {
        switch (this.b) {
            case 0:
                this.c = null;
                this.f11903a.l();
                return;
            default:
                super.l();
                return;
        }
    }

    @Override // j$.util.stream.AbstractC2205e2, j$.util.stream.InterfaceC2225i2
    public void m(long j) {
        switch (this.b) {
            case 0:
                this.c = new HashSet();
                this.f11903a.m(-1L);
                return;
            case 1:
            default:
                super.m(j);
                return;
            case 2:
                this.f11903a.m(-1L);
                return;
        }
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.b) {
            case 0:
                if (((HashSet) this.c).contains(obj)) {
                    return;
                }
                ((HashSet) this.c).add(obj);
                this.f11903a.accept((InterfaceC2225i2) obj);
                return;
            case 1:
                ((Consumer) ((C2262q) this.c).o).accept(obj);
                this.f11903a.accept((InterfaceC2225i2) obj);
                return;
            case 2:
                if (((Predicate) ((C2262q) this.c).o).test(obj)) {
                    this.f11903a.accept((InterfaceC2225i2) obj);
                    return;
                }
                return;
            case 3:
                this.f11903a.accept((InterfaceC2225i2) ((Function) ((C2262q) this.c).o).apply(obj));
                return;
            case 4:
                this.f11903a.accept(((ToIntFunction) ((S) this.c).n).applyAsInt(obj));
                return;
            case 5:
                this.f11903a.accept(((ToLongFunction) ((C2198d0) this.c).o).applyAsLong(obj));
                return;
            default:
                this.f11903a.accept(((ToDoubleFunction) ((C2286v) this.c).o).applyAsDouble(obj));
                return;
        }
    }
}
