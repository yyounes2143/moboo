package coil;

import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "coil.RealImageLoader", f = "RealImageLoader.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2}, l = {169, 180, 184}, m = "executeMain", n = {"this", "requestDelegate", AdActivity.REQUEST_KEY_EXTRA, "eventListener", "this", "requestDelegate", AdActivity.REQUEST_KEY_EXTRA, "eventListener", "placeholderBitmap", "this", "requestDelegate", AdActivity.REQUEST_KEY_EXTRA, "eventListener"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes3.dex */
public final class RealImageLoader$executeMain$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ RealImageLoader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealImageLoader$executeMain$1(RealImageLoader realImageLoader, Continuation<? super RealImageLoader$executeMain$1> continuation) {
        super(continuation);
        this.this$0 = realImageLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.this$0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, 0, this);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
