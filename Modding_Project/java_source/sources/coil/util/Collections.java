package coil.util;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0014\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\u001a7\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a%\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0005*\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0000¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)Ljava/util/Map;", "T", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)Ljava/util/List;", "coil-base_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
@JvmName(name = "-Collections")
/* renamed from: coil.util.-Collections  reason: invalid class name */
/* loaded from: classes3.dex */
public final class Collections {
    @NotNull
    public static final <K, V> Map<K, V> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<K, ? extends V> map) {
        int size = map.size();
        if (size != 0) {
            if (size != 1) {
                return java.util.Collections.unmodifiableMap(new LinkedHashMap(map));
            }
            Map.Entry entry = (Map.Entry) CollectionsKt.first(map.entrySet());
            return java.util.Collections.singletonMap(entry.getKey(), entry.getValue());
        }
        return MapsKt.emptyMap();
    }

    @NotNull
    public static final <T> List<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<? extends T> list) {
        int size = list.size();
        if (size != 0) {
            if (size != 1) {
                return java.util.Collections.unmodifiableList(new ArrayList(list));
            }
            return java.util.Collections.singletonList(CollectionsKt.first((List<? extends Object>) list));
        }
        return CollectionsKt.emptyList();
    }
}
