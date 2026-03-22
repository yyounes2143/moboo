package com.changdu.mobovideo.utils;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\t\u001a\u00020\u00062\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\bR\u001b\u0010\u000e\u001a\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001b\u0010\u0011\u001a\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u000b\u001a\u0004\b\u0010\u0010\r¨\u0006\u0012"}, d2 = {"Lcom/changdu/mobovideo/utils/CoroutineUtil;", "", "<init>", "()V", "", "name", "Lkotlinx/coroutines/CoroutineScope;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lkotlinx/coroutines/CoroutineScope;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlin/Lazy;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lkotlinx/coroutines/CoroutineScope;", "globalMainCoroutineScope", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "globalIOCoroutineScope", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCoroutineUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineUtil.kt\ncom/changdu/mobovideo/utils/CoroutineUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,82:1\n1#2:83\n*E\n"})
/* loaded from: classes3.dex */
public final class CoroutineUtil {
    @NotNull
    public static final CoroutineUtil INSTANCE = new CoroutineUtil();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Lazy f5652Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LazyKt.lazy(new Function0() { // from class: com.changdu.mobovideo.utils.Wwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            CoroutineScope Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CoroutineUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
    });
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Lazy f5651Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LazyKt.lazy(new Function0() { // from class: com.changdu.mobovideo.utils.Wwwwwwwwwwwwwwwwwwwwwwwww
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            CoroutineScope Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CoroutineUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
    });

    public static final CoroutineScope Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwww("CDGlobalCoroutineMain");
    }

    public static final CoroutineScope Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("CDGlobalCoroutineIO");
    }

    @NotNull
    public final CoroutineScope Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        CoroutineContext plus = SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getMain().getImmediate());
        if (str == null) {
            str = "CDCoroutineMain";
        }
        return CoroutineScopeKt.CoroutineScope(plus.plus(new CoroutineName(str)));
    }

    @NotNull
    public final CoroutineScope Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        CoroutineContext plus = SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getIO());
        if (str == null) {
            str = "CDCoroutineIO";
        }
        return CoroutineScopeKt.CoroutineScope(plus.plus(new CoroutineName(str)));
    }

    @NotNull
    public final CoroutineScope Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (CoroutineScope) f5652Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getValue();
    }

    @NotNull
    public final CoroutineScope Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (CoroutineScope) f5651Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getValue();
    }
}
