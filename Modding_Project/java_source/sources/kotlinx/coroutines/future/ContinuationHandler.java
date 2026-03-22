package kotlinx.coroutines.future;

import j$.util.function.BiFunction$CC;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u0018\u0012\u0006\u0012\u0004\u0018\u0001H\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00040\u0002B\u0017\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\t\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00018\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0002\u0010\fR\u001a\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/future/ContinuationHandler;", "T", "Ljava/util/function/BiFunction;", "", "", "cont", "Lkotlin/coroutines/Continuation;", "<init>", "(Lkotlin/coroutines/Continuation;)V", "apply", "result", "exception", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes7.dex */
final class ContinuationHandler<T> implements BiFunction<T, Throwable, Unit> {
    @JvmField
    @Nullable
    public volatile Continuation<? super T> cont;

    public ContinuationHandler(@Nullable Continuation<? super T> continuation) {
        this.cont = continuation;
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.function.BiFunction
    public /* bridge */ /* synthetic */ Unit apply(Object obj, Throwable th) {
        apply2((ContinuationHandler<T>) obj, th);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001d, code lost:
        r2 = r2.getCause();
     */
    /* renamed from: apply  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void apply2(@org.jetbrains.annotations.Nullable T r2, @org.jetbrains.annotations.Nullable java.lang.Throwable r3) {
        /*
            r1 = this;
            kotlin.coroutines.Continuation<? super T> r0 = r1.cont
            if (r0 != 0) goto L5
            return
        L5:
            if (r3 != 0) goto Lf
            java.lang.Object r2 = kotlin.Result.m438constructorimpl(r2)
            r0.resumeWith(r2)
            return
        Lf:
            boolean r2 = kotlinx.coroutines.future.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3)
            if (r2 == 0) goto L1a
            java.util.concurrent.CompletionException r2 = kotlinx.coroutines.future.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3)
            goto L1b
        L1a:
            r2 = 0
        L1b:
            if (r2 == 0) goto L25
            java.lang.Throwable r2 = kotlinx.coroutines.future.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)
            if (r2 != 0) goto L24
            goto L25
        L24:
            r3 = r2
        L25:
            kotlin.Result$Companion r2 = kotlin.Result.Companion
            java.lang.Object r2 = kotlin.ResultKt.createFailure(r3)
            java.lang.Object r2 = kotlin.Result.m438constructorimpl(r2)
            r0.resumeWith(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.future.ContinuationHandler.apply2(java.lang.Object, java.lang.Throwable):void");
    }
}
