package androidx.room.util;

import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;
import androidx.exifinterface.media.ExifInterface;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u001aT\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\u0004\b\u0001\u0010\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u00062\u0006\u0010\u0007\u001a\u00020\b2\u001e\u0010\t\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u0006\u0012\u0004\u0012\u00020\u00010\nH\u0007\u001a>\u0010\u000b\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00040\f2\u0006\u0010\u0007\u001a\u00020\b2\u0018\u0010\t\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\f\u0012\u0004\u0012\u00020\u00010\nH\u0007\"\u000e\u0010\r\u001a\u00020\u000eX\u0080T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"recursiveFetchMap", "", "K", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "map", "", "isRelationCollection", "", "fetchBlock", "Lkotlin/Function1;", "recursiveFetchLongSparseArray", "Landroidx/collection/LongSparseArray;", "MAX_BIND_PARAMETER_CNT", "", "room-runtime_release"}, k = 5, mv = {2, 0, 0}, xi = 48, xs = "androidx/room/util/RelationUtil")
/* loaded from: classes3.dex */
final /* synthetic */ class RelationUtil__RelationUtilKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final <V> void recursiveFetchLongSparseArray(@NotNull LongSparseArray<V> longSparseArray, boolean z, @NotNull Function1<? super LongSparseArray<V>, Unit> function1) {
        LongSparseArray<? extends V> longSparseArray2 = new LongSparseArray<>(999);
        int size = longSparseArray.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (z) {
                longSparseArray2.put(longSparseArray.keyAt(i), (V) longSparseArray.valueAt(i));
            } else {
                longSparseArray2.put(longSparseArray.keyAt(i), null);
            }
            i++;
            i2++;
            if (i2 == 999) {
                function1.invoke(longSparseArray2);
                if (!z) {
                    longSparseArray.putAll(longSparseArray2);
                }
                longSparseArray2.clear();
                i2 = 0;
            }
        }
        if (i2 > 0) {
            function1.invoke(longSparseArray2);
            if (!z) {
                longSparseArray.putAll(longSparseArray2);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final <K, V> void recursiveFetchMap(@NotNull Map<K, V> map, boolean z, @NotNull Function1<? super Map<K, V>, Unit> function1) {
        int i;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        loop0: while (true) {
            i = 0;
            for (K k : map.keySet()) {
                if (z) {
                    linkedHashMap.put(k, map.get(k));
                } else {
                    linkedHashMap.put(k, null);
                }
                i++;
                if (i == 999) {
                    function1.invoke(linkedHashMap);
                    if (!z) {
                        map.putAll(linkedHashMap);
                    }
                    linkedHashMap.clear();
                }
            }
            break loop0;
        }
        if (i > 0) {
            function1.invoke(linkedHashMap);
            if (!z) {
                map.putAll(linkedHashMap);
            }
        }
    }
}
