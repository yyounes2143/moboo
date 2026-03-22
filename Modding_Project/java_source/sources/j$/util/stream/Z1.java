package j$.util.stream;
/* loaded from: classes2.dex */
public abstract class Z1 extends AbstractC2185a2 {
    public final /* synthetic */ int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Z1(AbstractC2182a abstractC2182a, int i, int i2) {
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

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        switch (this.m) {
            case 0:
                return !X2.ORDERED.l(this.f) ? this : new Z1(this, X2.r, 1);
            default:
                return !X2.ORDERED.l(this.f) ? this : new Z1(this, X2.r, 1);
        }
    }
}
