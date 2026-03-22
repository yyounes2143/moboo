package coil.intercept;

import android.graphics.drawable.Drawable;
import coil.EventListener;
import coil.decode.DataSource;
import coil.intercept.EngineInterceptor;
import coil.intercept.Interceptor;
import coil.memory.MemoryCache;
import coil.memory.MemoryCacheService;
import coil.request.ImageRequest;
import coil.request.Options;
import coil.request.SuccessResult;
import coil.util.Utils;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcoil/request/SuccessResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "coil.intercept.EngineInterceptor$intercept$2", f = "EngineInterceptor.kt", i = {}, l = {75}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class EngineInterceptor$intercept$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super SuccessResult>, Object> {
    final /* synthetic */ MemoryCache.Key $cacheKey;
    final /* synthetic */ Interceptor.Chain $chain;
    final /* synthetic */ EventListener $eventListener;
    final /* synthetic */ Object $mappedData;
    final /* synthetic */ Options $options;
    final /* synthetic */ ImageRequest $request;
    int label;
    final /* synthetic */ EngineInterceptor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$intercept$2(EngineInterceptor engineInterceptor, ImageRequest imageRequest, Object obj, Options options, EventListener eventListener, MemoryCache.Key key, Interceptor.Chain chain, Continuation<? super EngineInterceptor$intercept$2> continuation) {
        super(2, continuation);
        this.this$0 = engineInterceptor;
        this.$request = imageRequest;
        this.$mappedData = obj;
        this.$options = options;
        this.$eventListener = eventListener;
        this.$cacheKey = key;
        this.$chain = chain;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new EngineInterceptor$intercept$2(this.this$0, this.$request, this.$mappedData, this.$options, this.$eventListener, this.$cacheKey, this.$chain, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        MemoryCacheService memoryCacheService;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                Wwwwwwwwwwwwwwwwwwwwwwwwww2 = obj;
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            EngineInterceptor engineInterceptor = this.this$0;
            ImageRequest imageRequest = this.$request;
            Object obj2 = this.$mappedData;
            Options options = this.$options;
            EventListener eventListener = this.$eventListener;
            this.label = 1;
            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = engineInterceptor.Wwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest, obj2, options, eventListener, this);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        EngineInterceptor.ExecuteResult executeResult = (EngineInterceptor.ExecuteResult) Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        memoryCacheService = this.this$0.f1935Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = memoryCacheService.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.$cacheKey, this.$request, executeResult);
        Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = executeResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        ImageRequest imageRequest2 = this.$request;
        DataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = executeResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        MemoryCache.Key key = this.$cacheKey;
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            key = null;
        }
        return new SuccessResult(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, imageRequest2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, key, executeResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), executeResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Utils.Wwwwwwwwwwwwww(this.$chain));
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super SuccessResult> continuation) {
        return ((EngineInterceptor$intercept$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
