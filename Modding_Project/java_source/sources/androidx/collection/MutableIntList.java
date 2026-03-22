package androidx.collection;

import androidx.annotation.IntRange;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003J\u0018\u0010\b\u001a\u00020\u000b2\b\b\u0001\u0010\f\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003J\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0001J\u0018\u0010\r\u001a\u00020\t2\b\b\u0001\u0010\f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0001J\u0018\u0010\r\u001a\u00020\t2\b\b\u0001\u0010\f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000bJ\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0003J\u0011\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0001H\u0086\u0002J\u0011\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0003H\u0086\nJ\u0011\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086\u0002J\u0011\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0001H\u0086\u0002J\u0011\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0003H\u0086\nJ\u0011\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086\u0002J\u000e\u0010\u0014\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003J\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0001J\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0016\u001a\u00020\u00032\b\b\u0001\u0010\f\u001a\u00020\u0003J\u001a\u0010\u0017\u001a\u00020\u000b2\b\b\u0001\u0010\u0018\u001a\u00020\u00032\b\b\u0001\u0010\u0019\u001a\u00020\u0003J\u000e\u0010\u001a\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0001J\u000e\u0010\u001a\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fJ\u001b\u0010\u001b\u001a\u00020\u00032\b\b\u0001\u0010\f\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0086\u0002J\u0006\u0010\u001c\u001a\u00020\u000bJ\u0006\u0010\u001d\u001a\u00020\u000bJ\u0010\u0010\u001e\u001a\u00020\u000b2\b\b\u0002\u0010\u001f\u001a\u00020\u0003R\u0012\u0010\u0005\u001a\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006 "}, d2 = {"Landroidx/collection/MutableIntList;", "Landroidx/collection/IntList;", "initialCapacity", "", "(I)V", "capacity", "getCapacity", "()I", "add", "", "element", "", FirebaseAnalytics.Param.INDEX, "addAll", "elements", "", "clear", "ensureCapacity", "minusAssign", "plusAssign", "remove", "removeAll", "removeAt", "removeRange", "start", "end", "retainAll", "set", "sort", "sortDescending", "trim", "minCapacity", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nIntList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntList.kt\nandroidx/collection/MutableIntList\n+ 2 IntList.kt\nandroidx/collection/IntList\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,969:1\n549#1:970\n70#2:971\n253#2,6:974\n70#2:980\n70#2:981\n70#2:982\n70#2:989\n70#2:990\n13600#3,2:972\n1663#3,6:983\n*S KotlinDebug\n*F\n+ 1 IntList.kt\nandroidx/collection/MutableIntList\n*L\n692#1:970\n753#1:971\n772#1:974,6\n783#1:980\n787#1:981\n834#1:982\n850#1:989\n869#1:990\n763#1:972,2\n836#1:983,6\n*E\n"})
/* loaded from: classes.dex */
public final class MutableIntList extends IntList {
    public MutableIntList() {
        this(0, 1, null);
    }

    public static /* synthetic */ void trim$default(MutableIntList mutableIntList, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = mutableIntList._size;
        }
        mutableIntList.trim(i);
    }

    public final boolean add(int i) {
        ensureCapacity(this._size + 1);
        int[] iArr = this.content;
        int i2 = this._size;
        iArr[i2] = i;
        this._size = i2 + 1;
        return true;
    }

    public final boolean addAll(@IntRange(from = 0) int i, @NotNull int[] iArr) {
        int i2;
        if (i >= 0 && i <= (i2 = this._size)) {
            if (iArr.length == 0) {
                return false;
            }
            ensureCapacity(i2 + iArr.length);
            int[] iArr2 = this.content;
            int i3 = this._size;
            if (i != i3) {
                ArraysKt.copyInto(iArr2, iArr2, iArr.length + i, i, i3);
            }
            ArraysKt.copyInto$default(iArr, iArr2, i, 0, 0, 12, (Object) null);
            this._size += iArr.length;
            return true;
        }
        throw new IndexOutOfBoundsException("Index " + i + " must be in 0.." + this._size);
    }

    public final void clear() {
        this._size = 0;
    }

    public final void ensureCapacity(int i) {
        int[] iArr = this.content;
        if (iArr.length < i) {
            this.content = Arrays.copyOf(iArr, Math.max(i, (iArr.length * 3) / 2));
        }
    }

    public final int getCapacity() {
        return this.content.length;
    }

    public final void minusAssign(int i) {
        remove(i);
    }

    public final void plusAssign(@NotNull IntList intList) {
        addAll(this._size, intList);
    }

    public final boolean remove(int i) {
        int indexOf = indexOf(i);
        if (indexOf >= 0) {
            removeAt(indexOf);
            return true;
        }
        return false;
    }

    public final boolean removeAll(@NotNull int[] iArr) {
        int i = this._size;
        for (int i2 : iArr) {
            remove(i2);
        }
        return i != this._size;
    }

    public final int removeAt(@IntRange(from = 0) int i) {
        int i2;
        if (i >= 0 && i < (i2 = this._size)) {
            int[] iArr = this.content;
            int i3 = iArr[i];
            if (i != i2 - 1) {
                ArraysKt.copyInto(iArr, iArr, i, i + 1, i2);
            }
            this._size--;
            return i3;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Index ");
        sb.append(i);
        sb.append(" must be in 0..");
        sb.append(this._size - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final void removeRange(@IntRange(from = 0) int i, @IntRange(from = 0) int i2) {
        int i3;
        if (i >= 0 && i <= (i3 = this._size) && i2 >= 0 && i2 <= i3) {
            if (i2 >= i) {
                if (i2 != i) {
                    if (i2 < i3) {
                        int[] iArr = this.content;
                        ArraysKt.copyInto(iArr, iArr, i, i2, i3);
                    }
                    this._size -= i2 - i;
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Start (" + i + ") is more than end (" + i2 + ')');
        }
        throw new IndexOutOfBoundsException("Start (" + i + ") and end (" + i2 + ") must be in 0.." + this._size);
    }

    public final boolean retainAll(@NotNull int[] iArr) {
        int i = this._size;
        int[] iArr2 = this.content;
        int i2 = i - 1;
        while (true) {
            int i3 = 0;
            int i4 = -1;
            if (-1 >= i2) {
                break;
            }
            int i5 = iArr2[i2];
            int length = iArr.length;
            while (true) {
                if (i3 >= length) {
                    break;
                } else if (iArr[i3] == i5) {
                    i4 = i3;
                    break;
                } else {
                    i3++;
                }
            }
            if (i4 < 0) {
                removeAt(i2);
            }
            i2--;
        }
        return i != this._size;
    }

    public final int set(@IntRange(from = 0) int i, int i2) {
        if (i >= 0 && i < this._size) {
            int[] iArr = this.content;
            int i3 = iArr[i];
            iArr[i] = i2;
            return i3;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("set index ");
        sb.append(i);
        sb.append(" must be between 0 .. ");
        sb.append(this._size - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final void sort() {
        ArraysKt.sort(this.content, 0, this._size);
    }

    public final void sortDescending() {
        ArraysKt.sortDescending(this.content, 0, this._size);
    }

    public final void trim(int i) {
        int max = Math.max(i, this._size);
        int[] iArr = this.content;
        if (iArr.length > max) {
            this.content = Arrays.copyOf(iArr, max);
        }
    }

    public /* synthetic */ MutableIntList(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 16 : i);
    }

    public final void minusAssign(@NotNull int[] iArr) {
        for (int i : iArr) {
            remove(i);
        }
    }

    public final void plusAssign(@NotNull int[] iArr) {
        addAll(this._size, iArr);
    }

    public MutableIntList(int i) {
        super(i, null);
    }

    public final void plusAssign(int i) {
        add(i);
    }

    public final void add(@IntRange(from = 0) int i, int i2) {
        int i3;
        if (i >= 0 && i <= (i3 = this._size)) {
            ensureCapacity(i3 + 1);
            int[] iArr = this.content;
            int i4 = this._size;
            if (i != i4) {
                ArraysKt.copyInto(iArr, iArr, i + 1, i, i4);
            }
            iArr[i] = i2;
            this._size++;
            return;
        }
        throw new IndexOutOfBoundsException("Index " + i + " must be in 0.." + this._size);
    }

    public final void minusAssign(@NotNull IntList intList) {
        int[] iArr = intList.content;
        int i = intList._size;
        for (int i2 = 0; i2 < i; i2++) {
            remove(iArr[i2]);
        }
    }

    public final boolean removeAll(@NotNull IntList intList) {
        int i = this._size;
        int i2 = intList._size - 1;
        if (i2 >= 0) {
            int i3 = 0;
            while (true) {
                remove(intList.get(i3));
                if (i3 == i2) {
                    break;
                }
                i3++;
            }
        }
        return i != this._size;
    }

    public final boolean retainAll(@NotNull IntList intList) {
        int i = this._size;
        int[] iArr = this.content;
        for (int i2 = i - 1; -1 < i2; i2--) {
            if (!intList.contains(iArr[i2])) {
                removeAt(i2);
            }
        }
        return i != this._size;
    }

    public final boolean addAll(@IntRange(from = 0) int i, @NotNull IntList intList) {
        if (i >= 0 && i <= this._size) {
            if (intList.isEmpty()) {
                return false;
            }
            ensureCapacity(this._size + intList._size);
            int[] iArr = this.content;
            int i2 = this._size;
            if (i != i2) {
                ArraysKt.copyInto(iArr, iArr, intList._size + i, i, i2);
            }
            ArraysKt.copyInto(intList.content, iArr, i, 0, intList._size);
            this._size += intList._size;
            return true;
        }
        throw new IndexOutOfBoundsException("Index " + i + " must be in 0.." + this._size);
    }

    public final boolean addAll(@NotNull IntList intList) {
        return addAll(this._size, intList);
    }

    public final boolean addAll(@NotNull int[] iArr) {
        return addAll(this._size, iArr);
    }
}
