package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Supplier;
/* renamed from: j$.util.stream.x  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2296x extends AbstractC2301y {
    public final /* synthetic */ int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AbstractC2296x(AbstractC2182a abstractC2182a, int i, int i2) {
        super(abstractC2182a, i);
        this.m = i2;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final boolean M() {
        switch (this.m) {
            case 0:
                return true;
            default:
                return false;
        }
    }

    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator I(Supplier supplier) {
        switch (this.m) {
            case 0:
                return new C2236k3(supplier);
            default:
                return new C2236k3(supplier);
        }
    }

    @Override // j$.util.stream.AbstractC2182a, j$.util.stream.BaseStream
    public final DoubleStream sequential() {
        switch (this.m) {
            case 0:
                this.f11896a.l = false;
                return this;
            default:
                this.f11896a.l = false;
                return this;
        }
    }

    @Override // j$.util.stream.AbstractC2182a, j$.util.stream.BaseStream
    public final DoubleStream parallel() {
        switch (this.m) {
            case 0:
                this.f11896a.l = true;
                return this;
            default:
                this.f11896a.l = true;
                return this;
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        switch (this.m) {
            case 0:
                return !X2.ORDERED.l(this.f) ? this : new r(this, X2.r, 1);
            default:
                return !X2.ORDERED.l(this.f) ? this : new r(this, X2.r, 1);
        }
    }

    @Override // j$.util.stream.AbstractC2182a, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        switch (this.m) {
            case 0:
                return spliterator();
            default:
                return spliterator();
        }
    }
}
