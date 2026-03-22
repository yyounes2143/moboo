package com.facebook;

import android.os.Handler;
import com.applovin.sdk.AppLovinMediationProvider;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0012\u0018\u0000 E2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003FEGB\t\b\u0016¢\u0006\u0004\b\u0003\u0010\u0004B\u0017\b\u0016\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0004\b\u0003\u0010\u0007B\u001d\b\u0016\u0012\u0012\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\b\"\u00020\u0002¢\u0006\u0004\b\u0003\u0010\tJ\u0015\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u0018\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0096\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b!\u0010 J \u0010\"\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\"\u0010#J\u0013\u0010$\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b$\u0010\rJ\r\u0010%\u001a\u00020\u000e¢\u0006\u0004\b%\u0010\u0010R$\u0010-\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u0016\u0010/\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010.R\u0017\u00105\u001a\u0002008\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R0\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u0002062\f\u00107\u001a\b\u0012\u0004\u0012\u00020\u0002068\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b3\u00108\u001a\u0004\b9\u0010\rR0\u0010:\u001a\b\u0012\u0004\u0012\u00020\u0011062\f\u00107\u001a\b\u0012\u0004\u0012\u00020\u0011068\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b9\u00108\u001a\u0004\b1\u0010\rR$\u0010>\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u00102\u001a\u0004\b'\u00104\"\u0004\b<\u0010=R$\u0010C\u001a\u00020\u001a2\u0006\u0010/\u001a\u00020\u001a8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u0014\u0010D\u001a\u00020\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b;\u0010@¨\u0006H"}, d2 = {"Lcom/facebook/GraphRequestBatch;", "Ljava/util/AbstractList;", "Lcom/facebook/GraphRequest;", "<init>", "()V", "", "requests", "(Ljava/util/Collection;)V", "", "([Lcom/facebook/GraphRequest;)V", "", "Lcom/facebook/GraphResponse;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "Lcom/facebook/GraphRequestAsyncTask;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/GraphRequestAsyncTask;", "Lcom/facebook/GraphRequestBatch$Callback;", "callback", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequestBatch$Callback;)V", "element", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequest;)Z", "", FirebaseAnalytics.Param.INDEX, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILcom/facebook/GraphRequest;)V", "clear", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Lcom/facebook/GraphRequest;", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwww", "(ILcom/facebook/GraphRequest;)Lcom/facebook/GraphRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/os/Handler;", "Wwwwwwwwwwww", "(Landroid/os/Handler;)V", "callbackHandler", "I", "timeoutInMilliseconds", "", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "id", "", "<set-?>", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwww", "callbacks", "Wwwwwwwwwwwwwwwwwwww", "setBatchApplicationId", "(Ljava/lang/String;)V", "batchApplicationId", "Wwwwwwwwwwwwwwwwwww", "()I", "setTimeout", "(I)V", "timeout", "size", "Companion", "Callback", "OnProgressCallback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GraphRequestBatch extends AbstractList<GraphRequest> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicInteger f6046Wwwwwwwwwwwwwwwwwww = new AtomicInteger();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6047Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<Callback> f6048Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<GraphRequest> f6049Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6050Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f6051Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Handler f6052Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/GraphRequestBatch$Callback;", "", "Lcom/facebook/GraphRequestBatch;", "batch", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequestBatch;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface Callback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull GraphRequestBatch graphRequestBatch);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/facebook/GraphRequestBatch$Companion;", "", "()V", "idGenerator", "Ljava/util/concurrent/atomic/AtomicInteger;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J'\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H&¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/facebook/GraphRequestBatch$OnProgressCallback;", "Lcom/facebook/GraphRequestBatch$Callback;", "Lcom/facebook/GraphRequestBatch;", "batch", "", "current", AppLovinMediationProvider.MAX, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequestBatch;JJ)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnProgressCallback extends Callback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull GraphRequestBatch graphRequestBatch, long j, long j2);
    }

    public GraphRequestBatch() {
        this.f6050Wwwwwwwwwwwwwwwwwwwwwww = String.valueOf(Integer.valueOf(f6046Wwwwwwwwwwwwwwwwwww.incrementAndGet()));
        this.f6048Wwwwwwwwwwwwwwwwwwwww = new ArrayList();
        this.f6049Wwwwwwwwwwwwwwwwwwwwww = new ArrayList();
    }

    public final void Wwwwwwwwwwww(@Nullable Handler handler) {
        this.f6052Wwwwwwwwwwwwwwwwwwwwwwwww = handler;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    /* renamed from: Wwwwwwwwwwwww */
    public GraphRequest set(int i, @NotNull GraphRequest graphRequest) {
        return this.f6049Wwwwwwwwwwwwwwwwwwwwww.set(i, graphRequest);
    }

    @NotNull
    public GraphRequest Wwwwwwwwwwwwww(int i) {
        return this.f6049Wwwwwwwwwwwwwwwwwwwwww.remove(i);
    }

    public /* bridge */ boolean Wwwwwwwwwwwwwww(GraphRequest graphRequest) {
        return super.remove(graphRequest);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: Wwwwwwwwwwwwwwww */
    public final /* bridge */ GraphRequest remove(int i) {
        return Wwwwwwwwwwwwww(i);
    }

    public /* bridge */ int Wwwwwwwwwwwwwwwww(GraphRequest graphRequest) {
        return super.lastIndexOf(graphRequest);
    }

    public /* bridge */ int Wwwwwwwwwwwwwwwwww(GraphRequest graphRequest) {
        return super.indexOf(graphRequest);
    }

    public final int Wwwwwwwwwwwwwwwwwww() {
        return this.f6051Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwww() {
        return this.f6049Wwwwwwwwwwwwwwwwwwwwww.size();
    }

    @NotNull
    public final List<GraphRequest> Wwwwwwwwwwwwwwwwwwwww() {
        return this.f6049Wwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f6050Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final List<Callback> Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6048Wwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Handler Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6052Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6047Wwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww */
    public GraphRequest get(int i) {
        return this.f6049Wwwwwwwwwwwwwwwwwwwwww.get(i);
    }

    public final GraphRequestAsyncTask Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return GraphRequest.Companion.Wwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @NotNull
    public final GraphRequestAsyncTask Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return GraphRequest.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @NotNull
    public final List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public /* bridge */ boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphRequest graphRequest) {
        return super.contains(graphRequest);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Callback callback) {
        if (!this.f6048Wwwwwwwwwwwwwwwwwwwww.contains(callback)) {
            this.f6048Wwwwwwwwwwwwwwwwwwwww.add(callback);
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean add(@NotNull GraphRequest graphRequest) {
        return this.f6049Wwwwwwwwwwwwwwwwwwwwww.add(graphRequest);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void add(int i, @NotNull GraphRequest graphRequest) {
        this.f6049Wwwwwwwwwwwwwwwwwwwwww.add(i, graphRequest);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.f6049Wwwwwwwwwwwwwwwwwwwwww.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        boolean z;
        if (obj == null) {
            z = true;
        } else {
            z = obj instanceof GraphRequest;
        }
        if (!z) {
            return false;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((GraphRequest) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        boolean z;
        if (obj == null) {
            z = true;
        } else {
            z = obj instanceof GraphRequest;
        }
        if (!z) {
            return -1;
        }
        return Wwwwwwwwwwwwwwwwww((GraphRequest) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        boolean z;
        if (obj == null) {
            z = true;
        } else {
            z = obj instanceof GraphRequest;
        }
        if (!z) {
            return -1;
        }
        return Wwwwwwwwwwwwwwwww((GraphRequest) obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return Wwwwwwwwwwwwwwwwwwww();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj == null ? true : obj instanceof GraphRequest) {
            return Wwwwwwwwwwwwwww((GraphRequest) obj);
        }
        return false;
    }

    public GraphRequestBatch(@NotNull Collection<GraphRequest> collection) {
        this.f6050Wwwwwwwwwwwwwwwwwwwwwww = String.valueOf(Integer.valueOf(f6046Wwwwwwwwwwwwwwwwwww.incrementAndGet()));
        this.f6048Wwwwwwwwwwwwwwwwwwwww = new ArrayList();
        this.f6049Wwwwwwwwwwwwwwwwwwwwww = new ArrayList(collection);
    }

    public GraphRequestBatch(@NotNull GraphRequest... graphRequestArr) {
        this.f6050Wwwwwwwwwwwwwwwwwwwwwww = String.valueOf(Integer.valueOf(f6046Wwwwwwwwwwwwwwwwwww.incrementAndGet()));
        this.f6048Wwwwwwwwwwwwwwwwwwwww = new ArrayList();
        this.f6049Wwwwwwwwwwwwwwwwwwwwww = new ArrayList(ArraysKt.asList(graphRequestArr));
    }
}
