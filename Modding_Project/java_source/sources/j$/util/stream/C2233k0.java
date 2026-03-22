package j$.util.stream;

import java.util.function.Predicate;
/* renamed from: j$.util.stream.k0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2233k0 extends AbstractC2253o0 {
    public final /* synthetic */ EnumC2258p0 c;
    public final /* synthetic */ Predicate d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2233k0(EnumC2258p0 enumC2258p0, Predicate predicate) {
        super(enumC2258p0);
        this.c = enumC2258p0;
        this.d = predicate;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        if (this.f11923a) {
            return;
        }
        boolean test = this.d.test(obj);
        EnumC2258p0 enumC2258p0 = this.c;
        if (test == enumC2258p0.f11925a) {
            this.f11923a = true;
            this.b = enumC2258p0.b;
        }
    }
}
