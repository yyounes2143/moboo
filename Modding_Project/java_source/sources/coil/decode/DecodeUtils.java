package coil.decode;

import androidx.annotation.Px;
import coil.size.Scale;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.JvmStatic;
import kotlin.ranges.RangesKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J?\u0010\u000b\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0006\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ?\u0010\u000e\u001a\u00020\r2\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0006\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ?\u0010\u0010\u001a\u00020\r2\b\b\u0001\u0010\u0005\u001a\u00020\r2\b\b\u0001\u0010\u0006\u001a\u00020\r2\b\b\u0001\u0010\u0007\u001a\u00020\r2\b\b\u0001\u0010\b\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcoil/decode/DecodeUtils;", "", "<init>", "()V", "", "srcWidth", "srcHeight", "dstWidth", "dstHeight", "Lcoil/size/Scale;", "scale", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(IIIILcoil/size/Scale;)I", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(IIIILcoil/size/Scale;)D", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(DDDDLcoil/size/Scale;)D", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DecodeUtils {
    @NotNull
    public static final DecodeUtils INSTANCE = new DecodeUtils();

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Scale.values().length];
            iArr[Scale.FILL.ordinal()] = 1;
            iArr[Scale.FIT.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @JvmStatic
    public static final double Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Px int i, @Px int i2, @Px int i3, @Px int i4, @NotNull Scale scale) {
        double d = i3 / i;
        double d2 = i4 / i2;
        int i5 = WhenMappings.$EnumSwitchMapping$0[scale.ordinal()];
        if (i5 != 1) {
            if (i5 == 2) {
                return Math.min(d, d2);
            }
            throw new NoWhenBranchMatchedException();
        }
        return Math.max(d, d2);
    }

    @JvmStatic
    public static final double Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Px double d, @Px double d2, @Px double d3, @Px double d4, @NotNull Scale scale) {
        double d5 = d3 / d;
        double d6 = d4 / d2;
        int i = WhenMappings.$EnumSwitchMapping$0[scale.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return Math.min(d5, d6);
            }
            throw new NoWhenBranchMatchedException();
        }
        return Math.max(d5, d6);
    }

    @JvmStatic
    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Px int i, @Px int i2, @Px int i3, @Px int i4, @NotNull Scale scale) {
        int min;
        int highestOneBit = Integer.highestOneBit(i / i3);
        int highestOneBit2 = Integer.highestOneBit(i2 / i4);
        int i5 = WhenMappings.$EnumSwitchMapping$0[scale.ordinal()];
        if (i5 != 1) {
            if (i5 == 2) {
                min = Math.max(highestOneBit, highestOneBit2);
            } else {
                throw new NoWhenBranchMatchedException();
            }
        } else {
            min = Math.min(highestOneBit, highestOneBit2);
        }
        return RangesKt.coerceAtLeast(min, 1);
    }
}
