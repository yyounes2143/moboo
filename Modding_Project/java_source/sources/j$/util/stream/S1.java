package j$.util.stream;
/* loaded from: classes2.dex */
public final class S1 extends T1 {
    @Override // j$.util.stream.O1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.b);
    }

    @Override // j$.util.stream.N1
    public final void h(N1 n1) {
        this.b += ((T1) n1).b;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.b++;
    }
}
