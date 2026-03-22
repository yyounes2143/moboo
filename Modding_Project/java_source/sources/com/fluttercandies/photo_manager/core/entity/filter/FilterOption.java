package com.fluttercandies.photo_manager.core.entity.filter;

import java.util.ArrayList;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u0005\u0010\u0006J9\u0010\u000e\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\u00040\tj\b\u0012\u0004\u0012\u00020\u0004`\n2\b\b\u0002\u0010\r\u001a\u00020\fH&¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\f8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "", "requestType", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "args", "", "needAnd", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILjava/util/ArrayList;Z)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "containsPathModified", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class FilterOption {
    public static /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FilterOption filterOption, int i, ArrayList arrayList, boolean z, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 4) != 0) {
                z = true;
            }
            return filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, arrayList, z);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: makeWhere");
    }

    @Nullable
    public abstract String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @NotNull
    public abstract String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull ArrayList<String> arrayList, boolean z);

    public abstract boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
}
