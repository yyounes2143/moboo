package coil.memory;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import coil.memory.MemoryCache;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u0000 %2\u00020\u0001:\u0002%&B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ;\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0011H\u0001¢\u0006\u0004\b\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0018\u0010\u0003R\\\u0010\"\u001a>\u0012\u0004\u0012\u00020\u0004\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001b0\u001aj\b\u0012\u0004\u0012\u00020\u001b`\u001c0\u0019j\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001b0\u001aj\b\u0012\u0004\u0012\u00020\u001b`\u001c`\u001d8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0015\u0010\u001e\u0012\u0004\b!\u0010\u0003\u001a\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010#¨\u0006'"}, d2 = {"Lcoil/memory/RealWeakMemoryCache;", "Lcoil/memory/WeakMemoryCache;", "<init>", "()V", "Lcoil/memory/MemoryCache$Key;", "key", "Lcoil/memory/MemoryCache$Value;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$Value;", "Landroid/graphics/Bitmap;", "bitmap", "", "", "", "extras", "", "size", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Ljava/util/Map;I)V", "level", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/LinkedHashMap;", "Ljava/util/ArrayList;", "Lcoil/memory/RealWeakMemoryCache$InternalValue;", "Lkotlin/collections/ArrayList;", "Lkotlin/collections/LinkedHashMap;", "Ljava/util/LinkedHashMap;", "getCache$coil_base_release", "()Ljava/util/LinkedHashMap;", "getCache$coil_base_release$annotations", "cache", "I", "operationsSinceCleanUp", "Companion", "InternalValue", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RealWeakMemoryCache implements WeakMemoryCache {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f1973Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LinkedHashMap<MemoryCache.Key, ArrayList<InternalValue>> f1974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LinkedHashMap<>();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcoil/memory/RealWeakMemoryCache$Companion;", "", "()V", "CLEAN_UP_INTERVAL", "", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0001\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\r\u0010\u0013R#\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u00078\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0014\u001a\u0004\b\u0011\u0010\u0015R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u000e\u001a\u0004\b\u0016\u0010\u0010¨\u0006\u0017"}, d2 = {"Lcoil/memory/RealWeakMemoryCache$InternalValue;", "", "", "identityHashCode", "Ljava/lang/ref/WeakReference;", "Landroid/graphics/Bitmap;", "bitmap", "", "", "extras", "size", "<init>", "(ILjava/lang/ref/WeakReference;Ljava/util/Map;I)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ref/WeakReference;", "()Ljava/lang/ref/WeakReference;", "Ljava/util/Map;", "()Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class InternalValue {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f1975Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Map<String, Object> f1976Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final WeakReference<Bitmap> f1977Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f1978Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public InternalValue(int i, @NotNull WeakReference<Bitmap> weakReference, @NotNull Map<String, ? extends Object> map, int i2) {
            this.f1978Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f1977Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = weakReference;
            this.f1976Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = map;
            this.f1975Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1975Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1978Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1976Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final WeakReference<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1977Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i = this.f1973Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        this.f1973Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i + 1;
        if (i >= 10) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @VisibleForTesting
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Bitmap bitmap;
        WeakReference<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.f1973Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
        Iterator<ArrayList<InternalValue>> it = this.f1974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.values().iterator();
        while (it.hasNext()) {
            ArrayList<InternalValue> next = it.next();
            if (next.size() <= 1) {
                InternalValue internalValue = (InternalValue) CollectionsKt.firstOrNull((List<? extends Object>) next);
                if (internalValue != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = internalValue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
                    bitmap = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get();
                } else {
                    bitmap = null;
                }
                if (bitmap == null) {
                    it.remove();
                }
            } else {
                int size = next.size();
                int i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    int i3 = i2 - i;
                    if (next.get(i3).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get() == null) {
                        next.remove(i3);
                        i++;
                    }
                }
                if (next.isEmpty()) {
                    it.remove();
                }
            }
        }
    }

    @Override // coil.memory.WeakMemoryCache
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MemoryCache.Key key, @NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map, int i) {
        try {
            LinkedHashMap<MemoryCache.Key, ArrayList<InternalValue>> linkedHashMap = this.f1974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            ArrayList<InternalValue> arrayList = linkedHashMap.get(key);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                linkedHashMap.put(key, arrayList);
            }
            ArrayList<InternalValue> arrayList2 = arrayList;
            int identityHashCode = System.identityHashCode(bitmap);
            InternalValue internalValue = new InternalValue(identityHashCode, new WeakReference(bitmap), map, i);
            int size = arrayList2.size();
            int i2 = 0;
            while (true) {
                if (i2 < size) {
                    InternalValue internalValue2 = arrayList2.get(i2);
                    if (i >= internalValue2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        if (internalValue2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == identityHashCode && internalValue2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get() == bitmap) {
                            arrayList2.set(i2, internalValue);
                        } else {
                            arrayList2.add(i2, internalValue);
                        }
                    } else {
                        i2++;
                    }
                } else {
                    arrayList2.add(internalValue);
                    break;
                }
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // coil.memory.WeakMemoryCache
    @Nullable
    public synchronized MemoryCache.Value Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MemoryCache.Key key) {
        MemoryCache.Value value;
        try {
            ArrayList<InternalValue> arrayList = this.f1974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(key);
            MemoryCache.Value value2 = null;
            if (arrayList == null) {
                return null;
            }
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                InternalValue internalValue = arrayList.get(i);
                Bitmap bitmap = internalValue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get();
                if (bitmap != null) {
                    value = new MemoryCache.Value(bitmap, internalValue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                } else {
                    value = null;
                }
                if (value != null) {
                    value2 = value;
                    break;
                }
                i++;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return value2;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // coil.memory.WeakMemoryCache
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i >= 10 && i != 20) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }
}
