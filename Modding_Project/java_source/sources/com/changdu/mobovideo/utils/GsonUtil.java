package com.changdu.mobovideo.utils;

import com.google.gson.Gson;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\f\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\b2\b\u0010\t\u001a\u0004\u0018\u00010\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/changdu/mobovideo/utils/GsonUtil;", "", "<init>", "()V", "obj", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Ljava/lang/String;", "T", "jsonStr", "Ljava/lang/Class;", "clazz", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class GsonUtil {
    @NotNull
    public static final GsonUtil INSTANCE = new GsonUtil();

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Object obj) {
        try {
            return new Gson().toJson(obj);
        } catch (Exception unused) {
            return "";
        }
    }

    @Nullable
    public final <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @NotNull Class<T> cls) {
        if (str == null) {
            return null;
        }
        try {
            return (T) new Gson().fromJson(str, (Class<Object>) cls);
        } catch (Exception unused) {
            return null;
        }
    }
}
