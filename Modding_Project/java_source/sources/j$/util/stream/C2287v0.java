package j$.util.stream;

import java.util.function.DoubleConsumer;
/* renamed from: j$.util.stream.v0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2287v0 implements DoubleConsumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11930a;

    public /* synthetic */ C2287v0(int i) {
        this.f11930a = i;
    }

    private final void accept$j$$util$stream$Node$OfDouble$$ExternalSyntheticLambda0(double d) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfDouble$$ExternalSyntheticLambda0(double d) {
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        int i = this.f11930a;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.f11930a) {
            case 0:
                return j$.com.android.tools.r8.a.b(this, doubleConsumer);
            default:
                return j$.com.android.tools.r8.a.b(this, doubleConsumer);
        }
    }
}
