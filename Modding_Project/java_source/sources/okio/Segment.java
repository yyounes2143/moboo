package okio;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\f\b\u0000\u0018\u0000 \"2\u00020\u0001:\u0001\"B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B1\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\u0002\u0010\fJ\r\u0010\r\u001a\u00020\u0000¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u0000¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u0010\u0010\u000eJ\u0015\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0003J\u001d\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0006¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u001cR\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u001dR\u0016\u0010\b\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u001dR\u0016\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u001eR\u0016\u0010\u000b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u001eR\u0018\u0010 \u001a\u0004\u0018\u00010\u00008\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u001fR\u0018\u0010!\u001a\u0004\u0018\u00010\u00008\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001f¨\u0006#"}, d2 = {"Lokio/Segment;", "", "<init>", "()V", "", "data", "", "pos", "limit", "", "shared", "owner", "([BIIZZ)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Segment;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "segment", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Segment;)Lokio/Segment;", "byteCount", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Lokio/Segment;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "sink", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Segment;I)V", "[B", "I", "Z", "Lokio/Segment;", "next", "prev", "Companion", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSegment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Segment.kt\nokio/Segment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n1#2:188\n*E\n"})
/* loaded from: classes7.dex */
public final class Segment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Segment f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Segment f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final byte[] f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lokio/Segment$Companion;", "", "()V", "SHARE_MINIMUM", "", "SIZE", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public Segment() {
        this.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new byte[8192];
        this.f13231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        this.f13232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Segment segment, int i) {
        if (segment.f13231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            int i2 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i2 + i > 8192) {
                if (!segment.f13232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    int i3 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if ((i2 + i) - i3 <= 8192) {
                        byte[] bArr = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        ArraysKt.copyInto$default(bArr, bArr, 0, i3, i2, 2, (Object) null);
                        segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww -= segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            byte[] bArr2 = this.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            byte[] bArr3 = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i4 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i5 = this.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            ArraysKt.copyInto(bArr2, bArr3, i4, i5, i5 + i);
            segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += i;
            this.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += i;
            return;
        }
        throw new IllegalStateException("only owner can write");
    }

    @NotNull
    public final Segment Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        byte[] bArr = this.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        return new Segment(Arrays.copyOf(bArr, bArr.length), this.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, false, true);
    }

    @NotNull
    public final Segment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        Segment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (i > 0 && i <= this.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - this.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (i >= 1024) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                byte[] bArr = this.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                byte[] bArr2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                int i2 = this.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                ArraysKt.copyInto$default(bArr, bArr2, 0, i2, i2 + i, 2, (Object) null);
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + i;
            this.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += i;
            this.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        throw new IllegalArgumentException("byteCount out of range");
    }

    @NotNull
    public final Segment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f13232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        return new Segment(this.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, true, false);
    }

    @NotNull
    public final Segment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Segment segment) {
        segment.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
        segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        this.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww = segment;
        this.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = segment;
        return segment;
    }

    @Nullable
    public final Segment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Segment segment;
        Segment segment2 = this.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (segment2 != this) {
            segment = segment2;
        } else {
            segment = null;
        }
        Segment segment3 = this.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        segment3.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = segment2;
        this.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww = segment3;
        this.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        return segment;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i;
        Segment segment = this.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (segment != this) {
            if (segment.f13231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                int i2 = this.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - this.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                int i3 = 8192 - segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (segment.f13232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    i = 0;
                } else {
                    i = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                if (i2 > i3 + i) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww(segment, i2);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                return;
            }
            return;
        }
        throw new IllegalStateException("cannot compact");
    }

    public Segment(@NotNull byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bArr;
        this.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f13232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f13231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
    }
}
