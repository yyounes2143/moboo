package com.fluttercandies.photo_manager.core.utils;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\bJ\u0015\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\bJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;", "", "<init>", "()V", "", "type", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "requestType", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Ljava/lang/String;", "targetType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(II)Z", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class RequestTypeUtils {
    @NotNull
    public static final RequestTypeUtils INSTANCE = new RequestTypeUtils();

    public static final CharSequence Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return "media_type = " + i;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        ArrayList arrayList = new ArrayList();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i)) {
            arrayList.add(1);
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i)) {
            arrayList.add(2);
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i)) {
            arrayList.add(3);
        }
        String joinToString$default = CollectionsKt.joinToString$default(arrayList, " OR ", null, null, 0, null, new Function1() { // from class: com.fluttercandies.photo_manager.core.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CharSequence Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RequestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(((Integer) obj).intValue());
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        }, 30, null);
        return "( " + joinToString$default + " )";
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, 2);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, 1);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, 4);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
        if ((i & i2) == i2) {
            return true;
        }
        return false;
    }
}
