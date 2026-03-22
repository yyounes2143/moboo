package j$.util.stream;

import java.util.function.LongConsumer;
/* renamed from: j$.util.stream.z0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2307z0 implements LongConsumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11936a;

    public /* synthetic */ C2307z0(int i) {
        this.f11936a = i;
    }

    private final void accept$j$$util$stream$Node$OfLong$$ExternalSyntheticLambda0(long j) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfLong$$ExternalSyntheticLambda0(long j) {
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.f11936a;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.f11936a) {
            case 0:
                return j$.com.android.tools.r8.a.d(this, longConsumer);
            default:
                return j$.com.android.tools.r8.a.d(this, longConsumer);
        }
    }
}
