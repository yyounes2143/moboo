package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public abstract class N implements I3, J3 {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f11882a;

    public /* synthetic */ void accept(double d) {
        AbstractC2273s1.a();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2273s1.k();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2273s1.l();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void l() {
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void m(long j) {
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ boolean o() {
        return false;
    }

    public N(boolean z) {
        this.f11882a = z;
    }

    @Override // j$.util.stream.I3
    public final int d() {
        if (this.f11882a) {
            return 0;
        }
        return X2.r;
    }

    public final void e(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        if (this.f11882a) {
            new O(abstractC2182a, spliterator, this).invoke();
        } else {
            new P(abstractC2182a, spliterator, abstractC2182a.S(this)).invoke();
        }
    }
}
