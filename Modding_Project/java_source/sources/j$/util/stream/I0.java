package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;
/* loaded from: classes2.dex */
public class I0 extends AbstractC2197d {
    public final AbstractC2182a h;
    public final LongFunction i;
    public final BinaryOperator j;

    @Override // j$.util.stream.AbstractC2197d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC2197d abstractC2197d = this.d;
        if (abstractC2197d != null) {
            this.f = (C0) this.j.apply((C0) ((I0) abstractC2197d).f, (C0) ((I0) this.e).f);
        }
        super.onCompletion(countedCompleter);
    }

    public I0(AbstractC2182a abstractC2182a, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator) {
        super(abstractC2182a, spliterator);
        this.h = abstractC2182a;
        this.i = longFunction;
        this.j = binaryOperator;
    }

    public I0(I0 i0, Spliterator spliterator) {
        super(i0, spliterator);
        this.h = i0.h;
        this.i = i0.i;
        this.j = i0.j;
    }

    @Override // j$.util.stream.AbstractC2197d
    public AbstractC2197d c(Spliterator spliterator) {
        return new I0(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC2197d
    /* renamed from: f */
    public final C0 a() {
        InterfaceC2282u0 interfaceC2282u0 = (InterfaceC2282u0) this.i.apply(this.h.F(this.b));
        this.h.R(this.b, interfaceC2282u0);
        return interfaceC2282u0.a();
    }
}
