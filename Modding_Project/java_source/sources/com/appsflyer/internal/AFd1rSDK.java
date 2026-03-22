package com.appsflyer.internal;

import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@SourceDebugExtension({"SMAP\nStringExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringExtensions.kt\ncom/appsflyer/internal/components/monitorsdk/helpers/StringExtensionsKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,102:1\n13004#2,3:103\n*S KotlinDebug\n*F\n+ 1 StringExtensions.kt\ncom/appsflyer/internal/components/monitorsdk/helpers/StringExtensionsKt\n*L\n44#1:103,3\n*E\n"})
/* loaded from: classes3.dex */
public final class AFd1rSDK {
    public static final String AFAdRevenueData(String str, String str2) {
        byte[] digest = MessageDigest.getInstance(str2).digest(str.getBytes(Charsets.UTF_8));
        int length = digest.length;
        String str3 = "";
        for (int i = 0; i < length; i++) {
            str3 = str3 + String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(digest[i])}, 1));
        }
        return str3;
    }

    @NotNull
    public static final String getCurrencyIso4217Code(@NotNull String str) {
        return "[Exception Manager]: " + str;
    }

    @Nullable
    public static final Pair<Integer, Integer> getMonetizationNetwork(@NotNull String str) {
        Integer num;
        Integer num2;
        Integer num3;
        Integer num4;
        Integer num5;
        Integer num6;
        String value;
        String value2;
        String value3;
        String value4;
        String value5;
        String value6;
        MatchResult matchEntire = new Regex("(\\d+).(\\d+).(\\d+)-(\\d+).(\\d+).(\\d+)").matchEntire(str);
        if (matchEntire != null) {
            MatchGroup matchGroup = matchEntire.getGroups().get(1);
            if (matchGroup != null && (value6 = matchGroup.getValue()) != null) {
                num = StringsKt.toIntOrNull(value6);
            } else {
                num = null;
            }
            MatchGroup matchGroup2 = matchEntire.getGroups().get(2);
            if (matchGroup2 != null && (value5 = matchGroup2.getValue()) != null) {
                num2 = StringsKt.toIntOrNull(value5);
            } else {
                num2 = null;
            }
            MatchGroup matchGroup3 = matchEntire.getGroups().get(3);
            if (matchGroup3 != null && (value4 = matchGroup3.getValue()) != null) {
                num3 = StringsKt.toIntOrNull(value4);
            } else {
                num3 = null;
            }
            MatchGroup matchGroup4 = matchEntire.getGroups().get(4);
            if (matchGroup4 != null && (value3 = matchGroup4.getValue()) != null) {
                num4 = StringsKt.toIntOrNull(value3);
            } else {
                num4 = null;
            }
            MatchGroup matchGroup5 = matchEntire.getGroups().get(5);
            if (matchGroup5 != null && (value2 = matchGroup5.getValue()) != null) {
                num5 = StringsKt.toIntOrNull(value2);
            } else {
                num5 = null;
            }
            MatchGroup matchGroup6 = matchEntire.getGroups().get(6);
            if (matchGroup6 != null && (value = matchGroup6.getValue()) != null) {
                num6 = StringsKt.toIntOrNull(value);
            } else {
                num6 = null;
            }
            if (AFAdRevenueData(num, num2, num3, num4, num5, num6)) {
                return TuplesKt.to(Integer.valueOf((num.intValue() * 1000000) + (num2.intValue() * 1000) + num3.intValue()), Integer.valueOf((num4.intValue() * 1000000) + (num5.intValue() * 1000) + num6.intValue()));
            }
        }
        return null;
    }

    @Nullable
    public static final Pair<Integer, Integer> AFAdRevenueData(@NotNull String str) {
        String value;
        String value2;
        String value3;
        MatchResult matchEntire = new Regex("^(\\d+).(\\+)$|^(\\d+).(\\d+).(\\+)$").matchEntire(str);
        if (matchEntire != null) {
            MatchGroup matchGroup = matchEntire.getGroups().get(1);
            Integer intOrNull = (matchGroup == null || (value3 = matchGroup.getValue()) == null) ? null : StringsKt.toIntOrNull(value3);
            MatchGroup matchGroup2 = matchEntire.getGroups().get(3);
            Integer intOrNull2 = (matchGroup2 == null || (value2 = matchGroup2.getValue()) == null) ? null : StringsKt.toIntOrNull(value2);
            MatchGroup matchGroup3 = matchEntire.getGroups().get(4);
            Integer intOrNull3 = (matchGroup3 == null || (value = matchGroup3.getValue()) == null) ? null : StringsKt.toIntOrNull(value);
            if (intOrNull != null) {
                return TuplesKt.to(Integer.valueOf(intOrNull.intValue() * 1000000), Integer.valueOf(((intOrNull.intValue() + 1) * 1000000) - 1));
            }
            if (intOrNull2 != null && intOrNull3 != null) {
                return TuplesKt.to(Integer.valueOf((intOrNull2.intValue() * 1000000) + (intOrNull3.intValue() * 1000)), Integer.valueOf(((intOrNull2.intValue() * 1000000) + ((intOrNull3.intValue() + 1) * 1000)) - 1));
            }
        }
        return null;
    }

    private static boolean AFAdRevenueData(@NotNull Object... objArr) {
        return !ArraysKt.contains(objArr, (Object) null);
    }
}
