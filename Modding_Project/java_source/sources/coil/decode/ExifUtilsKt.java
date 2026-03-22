package coil.decode;

import androidx.media3.common.MimeTypes;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.SetsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001d\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0000¢\u0006\u0004\b\u0004\u0010\u0005\"\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b\"\u0018\u0010\r\u001a\u00020\u0003*\u00020\n8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\"\u0018\u0010\u000e\u001a\u00020\u0003*\u00020\n8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\f¨\u0006\u000f"}, d2 = {"Lcoil/decode/ExifOrientationPolicy;", "", "mimeType", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/decode/ExifOrientationPolicy;Ljava/lang/String;)Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Set;", "RESPECT_PERFORMANCE_MIME_TYPES", "Lcoil/decode/ExifData;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/decode/ExifData;)Z", "isSwapped", "isRotated", "coil-base_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ExifUtilsKt {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<String> f1828Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = SetsKt.setOf((Object[]) new String[]{MimeTypes.IMAGE_JPEG, MimeTypes.IMAGE_WEBP, MimeTypes.IMAGE_HEIC, MimeTypes.IMAGE_HEIF});

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ExifOrientationPolicy.values().length];
            iArr[ExifOrientationPolicy.RESPECT_PERFORMANCE.ordinal()] = 1;
            iArr[ExifOrientationPolicy.IGNORE.ordinal()] = 2;
            iArr[ExifOrientationPolicy.RESPECT_ALL.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ExifOrientationPolicy exifOrientationPolicy, @Nullable String str) {
        int i = WhenMappings.$EnumSwitchMapping$0[exifOrientationPolicy.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return false;
            }
            if (i == 3) {
                return true;
            }
            throw new NoWhenBranchMatchedException();
        } else if (str == null || !f1828Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(str)) {
            return false;
        } else {
            return true;
        }
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ExifData exifData) {
        if (exifData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != 90 && exifData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != 270) {
            return false;
        }
        return true;
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ExifData exifData) {
        if (exifData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() > 0) {
            return true;
        }
        return false;
    }
}
