package com.fluttercandies.photo_manager.core.entity.filter;

import com.fluttercandies.photo_manager.constant.AssetType;
import com.fluttercandies.photo_manager.core.entity.filter.CommonFilterOption;
import com.fluttercandies.photo_manager.core.entity.filter.OrderByCond;
import com.fluttercandies.photo_manager.core.utils.ConvertUtils;
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
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005J7\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\t2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0012\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J7\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00002\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J/\u0010\u0019\u001a\u00020\t2\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\n2\u0006\u0010\u0012\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ7\u0010\u001e\u001a\u00020\t2\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\n2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001e\u0010\u001fR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010$\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\"R\u0014\u0010&\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010\"R\u0014\u0010(\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010'R\u0014\u0010*\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010'R\u001a\u0010-\u001a\u00020\f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001e\u0010+\u001a\u0004\b!\u0010,R\u001a\u00101\u001a\b\u0012\u0004\u0012\u00020/0.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u00100R\u0014\u00105\u001a\u0002028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b3\u00104¨\u00066"}, d2 = {"Lcom/fluttercandies/photo_manager/core/entity/filter/CommonFilterOption;", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;", "", "map", "<init>", "(Ljava/util/Map;)V", "", "requestType", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "args", "", "needAnd", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILjava/util/ArrayList;Z)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "option", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Integer;Lcom/fluttercandies/photo_manager/core/entity/filter/CommonFilterOption;)Ljava/lang/String;", "type", "filterOption", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILcom/fluttercandies/photo_manager/core/entity/filter/CommonFilterOption;Ljava/util/ArrayList;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/ArrayList;Lcom/fluttercandies/photo_manager/core/entity/filter/CommonFilterOption;)Ljava/lang/String;", "Lcom/fluttercandies/photo_manager/core/entity/filter/DateCond;", "dateCond", "dbKey", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/ArrayList;Lcom/fluttercandies/photo_manager/core/entity/filter/DateCond;Ljava/lang/String;)Ljava/lang/String;", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond;", "videoOption", "imageOption", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "audioOption", "Lcom/fluttercandies/photo_manager/core/entity/filter/DateCond;", "createDateCond", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "updateDateCond", "Z", "()Z", "containsPathModified", "", "Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;", "Ljava/util/List;", "orderByCond", "Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;", "typeUtils", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class CommonFilterOption extends FilterOption {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<OrderByCond> f7433Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f7434Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DateCond f7435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DateCond f7436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FilterCond f7437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FilterCond f7438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FilterCond f7439Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public CommonFilterOption(@NotNull Map<?, ?> map) {
        ConvertUtils convertUtils = ConvertUtils.INSTANCE;
        this.f7439Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = convertUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(map, AssetType.Video);
        this.f7438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = convertUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(map, AssetType.Image);
        this.f7437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = convertUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(map, AssetType.Audio);
        this.f7436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = convertUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) map.get("createDate"));
        this.f7435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = convertUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) map.get("updateDate"));
        this.f7434Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = ((Boolean) map.get("containsPathModified")).booleanValue();
        this.f7433Wwwwwwwwwwwwwwwwwwwwwwwwwwww = convertUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww((List) map.get("orders"));
    }

    public static final CharSequence Wwwwwwwwwwwwwwwwwwwwwwwww(OrderByCond orderByCond) {
        return orderByCond.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwww(Integer num, CommonFilterOption commonFilterOption) {
        String str = "";
        if (commonFilterOption.f7438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() || num == null || !Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(num.intValue())) {
            return "";
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(num.intValue())) {
            str = "OR ( media_type = 3 )";
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(num.intValue())) {
            str = str + " OR ( media_type = 2 )";
        }
        return "AND (" + ("( media_type = 1 AND width > 0 AND height > 0 )") + " " + str + ")";
    }

    public final RequestTypeUtils Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return RequestTypeUtils.INSTANCE;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwww(ArrayList<String> arrayList, CommonFilterOption commonFilterOption) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList, commonFilterOption.f7436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "date_added");
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList, commonFilterOption.f7435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "date_modified");
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + " " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, CommonFilterOption commonFilterOption, ArrayList<String> arrayList) {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        RequestTypeUtils requestTypeUtils = RequestTypeUtils.INSTANCE;
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = requestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = requestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = requestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        String str3 = "";
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            str = "";
        } else {
            FilterCond filterCond = commonFilterOption.f7438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            str = "media_type = ? ";
            arrayList.add("1");
            if (!filterCond.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = filterCond.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                str = str + " AND " + Wwwwwwwwwwwwwwwwwwwwwwwwww2;
                CollectionsKt.addAll(arrayList, filterCond.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        }
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            str2 = "";
        } else {
            FilterCond filterCond2 = commonFilterOption.f7439Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = filterCond2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = filterCond2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            str2 = "media_type = ? AND " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            arrayList.add("3");
            CollectionsKt.addAll(arrayList, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (!filterCond2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwww3 = filterCond2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                str2 = str2 + " AND " + Wwwwwwwwwwwwwwwwwwwwwwwwww3;
                CollectionsKt.addAll(arrayList, filterCond2.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            FilterCond filterCond3 = commonFilterOption.f7437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = filterCond3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = filterCond3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            str3 = "media_type = ? AND " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            arrayList.add("2");
            CollectionsKt.addAll(arrayList, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            sb.append("( " + str + " )");
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            if (sb.length() > 0) {
                sb.append("OR ");
            }
            sb.append("( " + str2 + " )");
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            if (sb.length() > 0) {
                sb.append("OR ");
            }
            sb.append("( " + str3 + " )");
        }
        return "( " + ((Object) sb) + " )";
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ArrayList<String> arrayList, DateCond dateCond, String str) {
        if (dateCond.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return "";
        }
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = dateCond.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = dateCond.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String str2 = "AND ( " + str + " >= ? AND " + str + " <= ? )";
        long j = 1000;
        arrayList.add(String.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 / j));
        arrayList.add(String.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 / j));
        return str2;
    }

    @Override // com.fluttercandies.photo_manager.core.entity.filter.FilterOption
    @Nullable
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f7433Wwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
            return null;
        }
        return CollectionsKt.joinToString$default(this.f7433Wwwwwwwwwwwwwwwwwwwwwwwwwwww, ",", null, null, 0, null, new Function1() { // from class: Kkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CharSequence Wwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwww2 = CommonFilterOption.Wwwwwwwwwwwwwwwwwwwwwwwww((OrderByCond) obj);
                return Wwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        }, 30, null);
    }

    @Override // com.fluttercandies.photo_manager.core.entity.filter.FilterOption
    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull ArrayList<String> arrayList, boolean z) {
        String str = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(i, this, arrayList) + " " + Wwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList, this) + " " + Wwwwwwwwwwwwwwwwwwwwwwww(Integer.valueOf(i), this);
        if (StringsKt.trim((CharSequence) str).toString().length() == 0) {
            return "";
        }
        if (z) {
            return " AND ( " + str + " )";
        }
        return " ( " + str + " ) ";
    }

    @Override // com.fluttercandies.photo_manager.core.entity.filter.FilterOption
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7434Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
