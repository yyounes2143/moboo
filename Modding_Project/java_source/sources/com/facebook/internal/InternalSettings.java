package com.facebook.internal;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0007R\u001a\u0010\r\u001a\u00020\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\f\u0010\u0003\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/facebook/internal/InternalSettings;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Ljava/lang/String;", "customUserAgent", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "isUnityApp$annotations", "isUnityApp", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class InternalSettings {
    @NotNull
    public static final InternalSettings INSTANCE = new InternalSettings();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile String f6761Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String str = f6761Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Boolean bool = null;
        if (str != null) {
            bool = Boolean.valueOf(StringsKt.startsWith$default(str, "Unity.", false, 2, (Object) null));
        }
        return Intrinsics.areEqual(bool, Boolean.TRUE);
    }

    @JvmStatic
    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f6761Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
