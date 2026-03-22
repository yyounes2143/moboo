package j$.util.stream;

import java.util.function.Supplier;
/* renamed from: j$.util.stream.j0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2228j0 implements Supplier {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11915a;
    public final /* synthetic */ EnumC2258p0 b;

    public /* synthetic */ C2228j0(EnumC2258p0 enumC2258p0, int i) {
        this.f11915a = i;
        this.b = enumC2258p0;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f11915a) {
            case 0:
                return new AbstractC2253o0(this.b);
            case 1:
                return new AbstractC2253o0(this.b);
            default:
                return new AbstractC2253o0(this.b);
        }
    }
}
