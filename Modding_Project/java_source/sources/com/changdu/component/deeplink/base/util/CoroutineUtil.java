package com.changdu.component.deeplink.base.util;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\b\u001a\u0004\b\f\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/changdu/component/deeplink/base/util/CoroutineUtil;", "", "", "name", "Lkotlinx/coroutines/CoroutineScope;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lkotlinx/coroutines/CoroutineScope;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlinx/coroutines/CoroutineScope;", "getGlobalMainCoroutineScope", "()Lkotlinx/coroutines/CoroutineScope;", "globalMainCoroutineScope", "getGlobalIOCoroutineScope", "globalIOCoroutineScope", "deeplink-base_release"}, k = 1, mv = {1, 9, 0})
/* loaded from: classes3.dex */
public final class CoroutineUtil {
    @NotNull
    public static final CoroutineUtil INSTANCE;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CoroutineScope f5321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CoroutineScope f5322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    static {
        CoroutineUtil coroutineUtil = new CoroutineUtil();
        INSTANCE = coroutineUtil;
        f5322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = coroutineUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("CDGlobalCoroutineMain");
        f5321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = coroutineUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("CDGlobalCoroutineIO");
    }

    @NotNull
    public final CoroutineScope Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        CoroutineContext plus = SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getMain().getImmediate());
        if (str == null) {
            str = "CDCoroutineMain";
        }
        return CoroutineScopeKt.CoroutineScope(plus.plus(new CoroutineName(str)));
    }

    @NotNull
    public final CoroutineScope Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        CoroutineContext plus = SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getIO());
        if (str == null) {
            str = "CDCoroutineIO";
        }
        return CoroutineScopeKt.CoroutineScope(plus.plus(new CoroutineName(str)));
    }
}
