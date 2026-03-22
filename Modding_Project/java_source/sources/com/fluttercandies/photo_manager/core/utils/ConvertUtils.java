package com.fluttercandies.photo_manager.core.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.sdk.AppLovinMediationProvider;
import com.fluttercandies.photo_manager.constant.AssetType;
import com.fluttercandies.photo_manager.core.entity.AssetEntity;
import com.fluttercandies.photo_manager.core.entity.AssetPathEntity;
import com.fluttercandies.photo_manager.core.entity.filter.CommonFilterOption;
import com.fluttercandies.photo_manager.core.entity.filter.CustomOption;
import com.fluttercandies.photo_manager.core.entity.filter.DateCond;
import com.fluttercandies.photo_manager.core.entity.filter.FilterCond;
import com.fluttercandies.photo_manager.core.entity.filter.FilterOption;
import com.fluttercandies.photo_manager.core.entity.filter.OrderByCond;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\t\u0010\nJ)\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004¢\u0006\u0004\b\f\u0010\nJ#\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00072\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ%\u0010\u0014\u001a\u00020\u00132\u000e\u0010\u0010\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00072\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0017\u001a\u00020\u00162\u000e\u0010\u0010\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u001a\u001a\u00020\u00192\u000e\u0010\u0010\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00042\n\u0010\u001c\u001a\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010 \u001a\u00020\u00132\u000e\u0010\u0010\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0007H\u0002¢\u0006\u0004\b \u0010!¨\u0006\""}, d2 = {"Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;", "", "<init>", "()V", "", "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;", "list", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)Ljava/util/Map;", "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "entity", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;)Ljava/util/Map;", "map", "Lcom/fluttercandies/photo_manager/constant/AssetType;", "type", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;Lcom/fluttercandies/photo_manager/constant/AssetType;)Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond;", "Lcom/fluttercandies/photo_manager/core/entity/filter/DateCond;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)Lcom/fluttercandies/photo_manager/core/entity/filter/DateCond;", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;", "orders", "Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)Lcom/fluttercandies/photo_manager/core/entity/filter/FilterCond;", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ConvertUtils {
    @NotNull
    public static final ConvertUtils INSTANCE = new ConvertUtils();

    @NotNull
    public final FilterCond Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<?, ?> map, @NotNull AssetType assetType) {
        String lowerCase = assetType.name().toLowerCase(Locale.ROOT);
        if (map.containsKey(lowerCase)) {
            Object obj = map.get(lowerCase);
            if (obj instanceof Map) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) obj);
            }
        }
        return new FilterCond();
    }

    @NotNull
    public final List<OrderByCond> Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<?> list) {
        String str;
        ArrayList arrayList = new ArrayList();
        if (list.isEmpty()) {
            return CollectionsKt.arrayListOf(new OrderByCond("_id", false));
        }
        Iterator<?> it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            int intValue = ((Integer) map.get("type")).intValue();
            boolean booleanValue = ((Boolean) map.get("asc")).booleanValue();
            if (intValue != 0) {
                if (intValue != 1) {
                    str = null;
                } else {
                    str = "date_modified";
                }
            } else {
                str = "date_added";
            }
            if (str != null) {
                arrayList.add(new OrderByCond(str, booleanValue));
            }
        }
        return arrayList;
    }

    public final FilterCond Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Map<?, ?> map) {
        FilterCond filterCond = new FilterCond();
        filterCond.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(((Boolean) map.get(CampaignEx.JSON_KEY_TITLE)).booleanValue());
        Map map2 = (Map) map.get("size");
        FilterCond.SizeConstraint sizeConstraint = new FilterCond.SizeConstraint();
        sizeConstraint.Wwwwwwwwwwwwwwwwwwwwwwwww(((Integer) map2.get("minWidth")).intValue());
        sizeConstraint.Wwwwwwwwwwwwwwwwwwwwwwwwwww(((Integer) map2.get("maxWidth")).intValue());
        sizeConstraint.Wwwwwwwwwwwwwwwwwwwwwwwwww(((Integer) map2.get("minHeight")).intValue());
        sizeConstraint.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(((Integer) map2.get("maxHeight")).intValue());
        sizeConstraint.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(((Boolean) map2.get("ignoreSize")).booleanValue());
        filterCond.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(sizeConstraint);
        Map map3 = (Map) map.get(TypedValues.TransitionType.S_DURATION);
        FilterCond.DurationConstraint durationConstraint = new FilterCond.DurationConstraint();
        durationConstraint.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(((Integer) map3.get("min")).intValue());
        durationConstraint.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((Integer) map3.get(AppLovinMediationProvider.MAX)).intValue());
        durationConstraint.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((Boolean) map3.get("allowNullable")).booleanValue());
        filterCond.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(durationConstraint);
        return filterCond;
    }

    @NotNull
    public final FilterOption Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<?, ?> map) {
        int intValue = ((Integer) map.get("type")).intValue();
        Map map2 = (Map) map.get("child");
        if (intValue != 0) {
            if (intValue == 1) {
                return new CustomOption(map2);
            }
            throw new IllegalStateException("Unknown type " + intValue + " for filter option.");
        }
        return new CommonFilterOption(map2);
    }

    @NotNull
    public final DateCond Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<?, ?> map) {
        return new DateCond(Long.parseLong(String.valueOf(map.get("min"))), Long.parseLong(String.valueOf(map.get(AppLovinMediationProvider.MAX))), Boolean.parseBoolean(String.valueOf(map.get("ignore"))));
    }

    @NotNull
    public final Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<AssetPathEntity> list) {
        ArrayList arrayList = new ArrayList();
        for (AssetPathEntity assetPathEntity : list) {
            if (assetPathEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != 0) {
                Map mutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("id", assetPathEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), TuplesKt.to("name", assetPathEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), TuplesKt.to("assetCount", Integer.valueOf(assetPathEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())), TuplesKt.to("isAll", Boolean.valueOf(assetPathEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww())));
                if (assetPathEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                    mutableMapOf.put("modified", assetPathEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
                arrayList.add(mutableMapOf);
            }
        }
        return MapsKt.mapOf(TuplesKt.to("data", arrayList));
    }

    @NotNull
    public final Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<AssetEntity> list) {
        ArrayList arrayList = new ArrayList();
        for (AssetEntity assetEntity : list) {
            arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(assetEntity));
        }
        return MapsKt.mapOf(TuplesKt.to("data", arrayList));
    }

    @NotNull
    public final Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AssetEntity assetEntity) {
        HashMap hashMapOf = MapsKt.hashMapOf(TuplesKt.to("id", String.valueOf(assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww())), TuplesKt.to(TypedValues.TransitionType.S_DURATION, Long.valueOf(assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() / 1000)), TuplesKt.to("type", Integer.valueOf(assetEntity.Wwwwwwwwwwwwwwwwwwwwww())), TuplesKt.to("createDt", Long.valueOf(assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())), TuplesKt.to("width", Integer.valueOf(assetEntity.Wwwwwwwwwwwwwwwwwwww())), TuplesKt.to("height", Integer.valueOf(assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())), TuplesKt.to("orientation", Integer.valueOf(assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwww())), TuplesKt.to("modifiedDt", Long.valueOf(assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwww())), TuplesKt.to("lat", assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()), TuplesKt.to("lng", assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()), TuplesKt.to(CampaignEx.JSON_KEY_TITLE, assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), TuplesKt.to("relativePath", assetEntity.Wwwwwwwwwwwwwwwwwwwwwww()));
        if (assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            hashMapOf.put("mimeType", assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        return hashMapOf;
    }
}
