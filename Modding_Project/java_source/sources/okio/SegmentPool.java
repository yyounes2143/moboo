package okio;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u000bH\u0002¢\u0006\u0004\b\f\u0010\rR\u001a\u0010\u0012\u001a\u00020\u000e8\u0006X\u0086D¢\u0006\f\n\u0004\b\f\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000fR\"\u0010\u0019\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u000b0\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lokio/SegmentPool;", "", "<init>", "()V", "Lokio/Segment;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Segment;", "segment", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Segment;)V", "Ljava/util/concurrent/atomic/AtomicReference;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/concurrent/atomic/AtomicReference;", "", "I", "getMAX_SIZE", "()I", "MAX_SIZE", "Lokio/Segment;", "LOCK", "HASH_BUCKET_COUNT", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[Ljava/util/concurrent/atomic/AtomicReference;", "hashBuckets", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class SegmentPool {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicReference<Segment>[] f13236Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int f13237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final SegmentPool INSTANCE = new SegmentPool();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int f13239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 65536;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Segment f13238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Segment(new byte[0], 0, 0, false, false);

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f13237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = highestOneBit;
        AtomicReference<Segment>[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i = 0; i < highestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference<>();
        }
        f13236Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = atomicReferenceArr;
    }

    @JvmStatic
    @NotNull
    public static final Segment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        AtomicReference<Segment> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Segment segment = f13238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Segment andSet = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getAndSet(segment);
        if (andSet == segment) {
            return new Segment();
        }
        if (andSet == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.set(null);
            return new Segment();
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.set(andSet.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        andSet.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        andSet.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
        return andSet;
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Segment segment) {
        AtomicReference<Segment> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Segment segment2;
        Segment andSet;
        int i;
        if (segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null && segment.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            if (segment.f13232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww || (andSet = (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).getAndSet((segment2 = f13238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww))) == segment2) {
                return;
            }
            if (andSet != null) {
                i = andSet.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            } else {
                i = 0;
            }
            if (i >= f13239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.set(andSet);
                return;
            }
            segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = andSet;
            segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
            segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i + 8192;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.set(segment);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public final AtomicReference<Segment> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f13236Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[(int) (Thread.currentThread().getId() & (f13237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - 1))];
    }
}
