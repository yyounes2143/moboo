package com.fluttercandies.photo_manager.core.entity.filter;

import com.fluttercandies.photo_manager.core.entity.filter.CustomOption;
import com.fluttercandies.photo_manager.core.utils.RequestTypeUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0011\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ7\u0010\u0010\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u000bj\b\u0012\u0004\u0012\u00020\u0006`\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0016\u001a\u00020\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0014\u001a\u0004\b\u0012\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/fluttercandies/photo_manager/core/entity/filter/CustomOption;", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;", "", "map", "<init>", "(Ljava/util/Map;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "", "requestType", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "args", "", "needAnd", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILjava/util/ArrayList;Z)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "Z", "()Z", "containsPathModified", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class CustomOption extends FilterOption {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f7440Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<?, ?> f7441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public CustomOption(@NotNull Map<?, ?> map) {
        this.f7441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = map;
        this.f7440Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ((Boolean) map.get("containsPathModified")).booleanValue();
    }

    public static final CharSequence Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        String str;
        Map map = (Map) obj;
        String str2 = (String) map.get("column");
        if (((Boolean) map.get("isAsc")).booleanValue()) {
            str = "ASC";
        } else {
            str = "DESC";
        }
        return str2 + " " + str;
    }

    @Override // com.fluttercandies.photo_manager.core.entity.filter.FilterOption
    @Nullable
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        List list;
        Object obj = this.f7441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get("orderBy");
        if (obj instanceof List) {
            list = (List) obj;
        } else {
            list = null;
        }
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return null;
        }
        return CollectionsKt.joinToString$default(list, ",", null, null, 0, null, new Function1() { // from class: Kkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                CharSequence Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CustomOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj2);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        }, 30, null);
    }

    @Override // com.fluttercandies.photo_manager.core.entity.filter.FilterOption
    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull ArrayList<String> arrayList, boolean z) {
        String str = (String) this.f7441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get("where");
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RequestTypeUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        if (StringsKt.trim((CharSequence) str).toString().length() == 0) {
            if (z) {
                return "AND " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } else if (z && StringsKt.trim((CharSequence) str).toString().length() > 0) {
            return "AND ( " + str + " )";
        } else {
            return "( " + str + " )";
        }
    }

    @Override // com.fluttercandies.photo_manager.core.entity.filter.FilterOption
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7440Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
