package coil.intercept;

import coil.EventListener;
import coil.intercept.Interceptor;
import coil.request.ImageRequest;
import coil.request.NullRequestData;
import coil.size.Size;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0019\b\u0000\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0013\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\u00162\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J-\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u0019\u0010\"\u001a\u0004\b#\u0010$R\u001a\u0010\t\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b%\u0010\u001c\u001a\u0004\b\u001b\u0010\u001eR\u001a\u0010\u000b\u001a\u00020\n8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b&\u0010,R\u0017\u0010\u000f\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u0013\u0010-\u001a\u0004\b*\u0010.\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006/"}, d2 = {"Lcoil/intercept/RealInterceptorChain;", "Lcoil/intercept/Interceptor$Chain;", "Lcoil/request/ImageRequest;", "initialRequest", "", "Lcoil/intercept/Interceptor;", "interceptors", "", FirebaseAnalytics.Param.INDEX, AdActivity.REQUEST_KEY_EXTRA, "Lcoil/size/Size;", "size", "Lcoil/EventListener;", "eventListener", "", "isPlaceholderCached", "<init>", "(Lcoil/request/ImageRequest;Ljava/util/List;ILcoil/request/ImageRequest;Lcoil/size/Size;Lcoil/EventListener;Z)V", "Lcoil/request/ImageResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "interceptor", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/intercept/Interceptor;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILcoil/request/ImageRequest;Lcoil/size/Size;)Lcoil/intercept/RealInterceptorChain;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/ImageRequest;", "getInitialRequest", "()Lcoil/request/ImageRequest;", "Ljava/util/List;", "getInterceptors", "()Ljava/util/List;", "I", "getIndex", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/size/Size;", "getSize", "()Lcoil/size/Size;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/EventListener;", "()Lcoil/EventListener;", "Z", "()Z", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RealInterceptorChain implements Interceptor.Chain {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f1943Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final EventListener f1944Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Size f1945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageRequest f1946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f1947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Interceptor> f1948Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageRequest f1949Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* JADX WARN: Multi-variable type inference failed */
    public RealInterceptorChain(@NotNull ImageRequest imageRequest, @NotNull List<? extends Interceptor> list, int i, @NotNull ImageRequest imageRequest2, @NotNull Size size, @NotNull EventListener eventListener, boolean z) {
        this.f1949Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest;
        this.f1948Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f1947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f1946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest2;
        this.f1945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = size;
        this.f1944Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = eventListener;
        this.f1943Wwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public static /* synthetic */ RealInterceptorChain Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RealInterceptorChain realInterceptorChain, int i, ImageRequest imageRequest, Size size, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = realInterceptorChain.f1947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if ((i2 & 2) != 0) {
            imageRequest = realInterceptorChain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if ((i2 & 4) != 0) {
            size = realInterceptorChain.getSize();
        }
        return realInterceptorChain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, imageRequest, size);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull coil.request.ImageRequest r11, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super coil.request.ImageResult> r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof coil.intercept.RealInterceptorChain$proceed$1
            if (r0 == 0) goto L13
            r0 = r12
            coil.intercept.RealInterceptorChain$proceed$1 r0 = (coil.intercept.RealInterceptorChain$proceed$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil.intercept.RealInterceptorChain$proceed$1 r0 = new coil.intercept.RealInterceptorChain$proceed$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r11 = r0.L$1
            coil.intercept.Interceptor r11 = (coil.intercept.Interceptor) r11
            java.lang.Object r0 = r0.L$0
            coil.intercept.RealInterceptorChain r0 = (coil.intercept.RealInterceptorChain) r0
            kotlin.ResultKt.throwOnFailure(r12)
            r4 = r10
            goto L75
        L32:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L3a:
            kotlin.ResultKt.throwOnFailure(r12)
            int r12 = r10.f1947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            if (r12 <= 0) goto L4d
            java.util.List<coil.intercept.Interceptor> r2 = r10.f1948Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            int r12 = r12 - r3
            java.lang.Object r12 = r2.get(r12)
            coil.intercept.Interceptor r12 = (coil.intercept.Interceptor) r12
            r10.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r11, r12)
        L4d:
            java.util.List<coil.intercept.Interceptor> r12 = r10.f1948Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            int r2 = r10.f1947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            java.lang.Object r12 = r12.get(r2)
            coil.intercept.Interceptor r12 = (coil.intercept.Interceptor) r12
            int r2 = r10.f1947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            int r5 = r2 + 1
            r8 = 4
            r9 = 0
            r7 = 0
            r4 = r10
            r6 = r11
            coil.intercept.RealInterceptorChain r11 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r4, r5, r6, r7, r8, r9)
            r0.L$0 = r4
            r0.L$1 = r12
            r0.label = r3
            java.lang.Object r11 = r12.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r11, r0)
            if (r11 != r1) goto L71
            return r1
        L71:
            r0 = r12
            r12 = r11
            r11 = r0
            r0 = r4
        L75:
            coil.request.ImageResult r12 = (coil.request.ImageResult) r12
            coil.request.ImageRequest r1 = r12.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1, r11)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.intercept.RealInterceptorChain.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(coil.request.ImageRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1943Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final EventListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1944Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final RealInterceptorChain Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, ImageRequest imageRequest, Size size) {
        return new RealInterceptorChain(this.f1949Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f1948Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, imageRequest, size, this.f1944Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f1943Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageRequest imageRequest, Interceptor interceptor) {
        if (imageRequest.Wwwwwwwwwwwwwwwwwwwwwww() == this.f1949Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww()) {
            if (imageRequest.Wwwwwwwwwwwwwwwwwwwwww() != NullRequestData.INSTANCE) {
                if (imageRequest.Kkkkkkkkkkkkkkkkkkkk() == this.f1949Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkk()) {
                    if (imageRequest.Wwwwwwwww() == this.f1949Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwww()) {
                        if (imageRequest.Kkkkkkkkkkkkkkkkkkkkkk() == this.f1949Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkk()) {
                            return;
                        }
                        throw new IllegalStateException(("Interceptor '" + interceptor + "' cannot modify the request's size resolver. Use `Interceptor.Chain.withSize` instead.").toString());
                    }
                    throw new IllegalStateException(("Interceptor '" + interceptor + "' cannot modify the request's lifecycle.").toString());
                }
                throw new IllegalStateException(("Interceptor '" + interceptor + "' cannot modify the request's target.").toString());
            }
            throw new IllegalStateException(("Interceptor '" + interceptor + "' cannot set the request's data to null.").toString());
        }
        throw new IllegalStateException(("Interceptor '" + interceptor + "' cannot modify the request's context.").toString());
    }

    @Override // coil.intercept.Interceptor.Chain
    @NotNull
    public ImageRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // coil.intercept.Interceptor.Chain
    @NotNull
    public Size getSize() {
        return this.f1945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
