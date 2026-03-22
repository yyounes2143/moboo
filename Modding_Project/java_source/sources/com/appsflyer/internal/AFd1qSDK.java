package com.appsflyer.internal;

import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
/* compiled from: Proguard */
@SourceDebugExtension({"SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\ncom/appsflyer/internal/components/monitorsdk/helpers/ExtensionsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,24:1\n1549#2:25\n1620#2,3:26\n*S KotlinDebug\n*F\n+ 1 Extensions.kt\ncom/appsflyer/internal/components/monitorsdk/helpers/ExtensionsKt\n*L\n16#1:25\n16#1:26,3\n*E\n"})
/* loaded from: classes3.dex */
public final class AFd1qSDK {
    public static final boolean getCurrencyIso4217Code(@NotNull HttpURLConnection httpURLConnection) {
        if (httpURLConnection.getResponseCode() / 100 == 2) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final JSONArray getMediationNetwork(@NotNull List<AFc1aSDK> list) {
        List<AFc1aSDK> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        for (AFc1aSDK aFc1aSDK : list2) {
            arrayList.add(aFc1aSDK.getRevenue());
        }
        return new JSONArray((Collection) arrayList);
    }
}
