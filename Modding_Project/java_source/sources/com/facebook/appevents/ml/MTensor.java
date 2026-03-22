package com.facebook.appevents.ml;

import androidx.media3.exoplayer.upstream.CmcdData;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0014\n\u0002\b\t\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\u0005R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u000eR$\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00108\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\f\u0010\u0014R\u0011\u0010\u0017\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/facebook/appevents/ml/MTensor;", "", "", "shape", "<init>", "([I)V", "", CmcdData.Factory.OBJECT_TYPE_INIT_SEGMENT, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)I", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[I", "I", "capacity", "", "<set-?>", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[F", "()[F", "data", "()I", "shapeSize", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MTensor {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public float[] f6457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f6458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int[] f6459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/facebook/appevents/ml/MTensor$Companion;", "", "<init>", "()V", "", "shape", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([I)I", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int[] iArr) {
            if (iArr.length != 0) {
                int i = iArr[0];
                int lastIndex = ArraysKt.getLastIndex(iArr);
                int i2 = 1;
                if (1 <= lastIndex) {
                    while (true) {
                        i *= iArr[i2];
                        if (i2 == lastIndex) {
                            break;
                        }
                        i2++;
                    }
                }
                return i;
            }
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }

        public Companion() {
        }
    }

    public MTensor(@NotNull int[] iArr) {
        this.f6459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr;
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(iArr);
        this.f6458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.f6457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new float[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2];
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull int[] iArr) {
        this.f6459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr;
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(iArr);
        float[] fArr = new float[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2];
        System.arraycopy(this.f6457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0, fArr, 0, Math.min(this.f6458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
        this.f6457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fArr;
        this.f6458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return this.f6459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
    }

    @NotNull
    public final float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
