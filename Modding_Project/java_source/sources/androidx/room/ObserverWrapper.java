package androidx.room;

import androidx.room.InvalidationTracker;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0007¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0011H\u0000¢\u0006\u0002\b\u0016J\u001b\u0010\u0017\u001a\u00020\u00132\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\b0\u0011H\u0000¢\u0006\u0002\b\u0019R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Landroidx/room/ObserverWrapper;", "", "observer", "Landroidx/room/InvalidationTracker$Observer;", "tableIds", "", "tableNames", "", "", "<init>", "(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;)V", "getObserver$room_runtime_release", "()Landroidx/room/InvalidationTracker$Observer;", "getTableIds$room_runtime_release", "()[I", "[Ljava/lang/String;", "singleTableSet", "", "notifyByTableIds", "", "invalidatedTablesIds", "", "notifyByTableIds$room_runtime_release", "notifyByTableNames", "invalidatedTablesNames", "notifyByTableNames$room_runtime_release", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInvalidationTracker.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.android.kt\nandroidx/room/ObserverWrapper\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,592:1\n13497#2,3:593\n1755#3,3:596\n1863#3,2:599\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.android.kt\nandroidx/room/ObserverWrapper\n*L\n532#1:593,3\n550#1:596,3\n558#1:599,2\n*E\n"})
/* loaded from: classes3.dex */
public final class ObserverWrapper {
    @NotNull
    private final InvalidationTracker.Observer observer;
    @NotNull
    private final Set<String> singleTableSet;
    @NotNull
    private final int[] tableIds;
    @NotNull
    private final String[] tableNames;

    public ObserverWrapper(@NotNull InvalidationTracker.Observer observer, @NotNull int[] iArr, @NotNull String[] strArr) {
        boolean z;
        Set<String> emptySet;
        this.observer = observer;
        this.tableIds = iArr;
        this.tableNames = strArr;
        if (iArr.length == strArr.length) {
            if (strArr.length == 0) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                emptySet = SetsKt.setOf(strArr[0]);
            } else {
                emptySet = SetsKt.emptySet();
            }
            this.singleTableSet = emptySet;
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    @NotNull
    public final InvalidationTracker.Observer getObserver$room_runtime_release() {
        return this.observer;
    }

    @NotNull
    public final int[] getTableIds$room_runtime_release() {
        return this.tableIds;
    }

    public final void notifyByTableIds$room_runtime_release(@NotNull Set<Integer> set) {
        Set<String> emptySet;
        int[] iArr = this.tableIds;
        int length = iArr.length;
        if (length != 0) {
            int i = 0;
            if (length != 1) {
                Set createSetBuilder = SetsKt.createSetBuilder();
                int[] iArr2 = this.tableIds;
                int length2 = iArr2.length;
                int i2 = 0;
                while (i < length2) {
                    int i3 = i2 + 1;
                    if (set.contains(Integer.valueOf(iArr2[i]))) {
                        createSetBuilder.add(this.tableNames[i2]);
                    }
                    i++;
                    i2 = i3;
                }
                emptySet = SetsKt.build(createSetBuilder);
            } else if (set.contains(Integer.valueOf(iArr[0]))) {
                emptySet = this.singleTableSet;
            } else {
                emptySet = SetsKt.emptySet();
            }
        } else {
            emptySet = SetsKt.emptySet();
        }
        if (!emptySet.isEmpty()) {
            this.observer.onInvalidated(emptySet);
        }
    }

    public final void notifyByTableNames$room_runtime_release(@NotNull Set<String> set) {
        Set<String> emptySet;
        int length = this.tableNames.length;
        if (length != 0) {
            if (length != 1) {
                Set createSetBuilder = SetsKt.createSetBuilder();
                for (String str : set) {
                    String[] strArr = this.tableNames;
                    int length2 = strArr.length;
                    int i = 0;
                    while (true) {
                        if (i < length2) {
                            String str2 = strArr[i];
                            if (StringsKt.equals(str2, str, true)) {
                                createSetBuilder.add(str2);
                                break;
                            }
                            i++;
                        }
                    }
                }
                emptySet = SetsKt.build(createSetBuilder);
            } else {
                if (!androidx.activity.Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(set) || !set.isEmpty()) {
                    for (String str3 : set) {
                        if (StringsKt.equals(str3, this.tableNames[0], true)) {
                            emptySet = this.singleTableSet;
                            break;
                        }
                    }
                }
                emptySet = SetsKt.emptySet();
            }
        } else {
            emptySet = SetsKt.emptySet();
        }
        if (!emptySet.isEmpty()) {
            this.observer.onInvalidated(emptySet);
        }
    }
}
